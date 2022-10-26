if [ $2 == "dev" ]; then
HELM_REPO_BASEDIR="static/charts/dev"
else
HELM_REPO_BASEDIR="static/charts/stable"
fi

echo $HELM_REPO_BASEDIR
  
  # extract location, release and chart name from input $1
  #repo_name=$(cut -d '/' -f2 <<< "$1") # obsolete, delete later
release_location=$(curl -s https://api.github.com/repos/"$1"/releases/latest | grep "browser_download_url" | awk '{print $2}' | sed 's/"//g')
release_name=$(basename "$release_location")
chart_name=$(echo "$release_name" | sed 's/[0-9.]//g' | sed 's/-tgz$//')
  
  # Create chart directory if non existent
if [ ! -d "$HELM_REPO_BASEDIR/$chart_name" ]; then
mkdir -p "$HELM_REPO_BASEDIR/$chart_name"
fi

if [ ! -f "$HELM_REPO_BASEDIR/$chart_name/$release_name" ]; then
  # download released helm chart
curl -L -o "$HELM_REPO_BASEDIR/$chart_name/$release_name" "$release_location"

  # create/update helm repo index
helm repo index --merge "$HELM_REPO_BASEDIR/dev/index.yaml" "$HELM_REPO_BASEDIR"
fi
