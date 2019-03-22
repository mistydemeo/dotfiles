function dl-switch-data
  set jsonData (curl $argv[1] | grep jsonData | sed -E 's,.+NXSTORE.titleDetail.jsonData = ,,' | sed 's/.$//')
  curl (echo $jsonData | jq -r .applications[0].image_url) > cover.jpg

  mkdir promo
  curl (echo $jsonData | jq -r .hero_banner_url) > promo/banner.jpg
  set index 0
  for image in (echo $jsonData | jq -r .screenshots[].images[].url)
    curl $image > promo/screen0$index.jpg
    set index (math $index + 1)
  end
end
