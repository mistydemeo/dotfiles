function uti -d "Lists the content type for a file"
  mdls -name kMDItemContentType -name kMDItemContentTypeTree -name kMDItemKind $argv[1]
end
