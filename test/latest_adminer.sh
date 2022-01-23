latest_tag=$(curl -s https://api.github.com/repos/vrana/adminer/releases/latest | sed -Ene '/^ *"tag_name": *"(v.+)",$/s//\1/p')


latest_code=$(echo $latest_tag | sed -e 's/v//g')
echo "Using version $latest_tag"
# https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php
curl -JL https://github.com/vrana/adminer/releases/download/$latest_tag/adminer-$latest_code-en.php > adminer.php
