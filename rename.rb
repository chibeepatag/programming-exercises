
def rename_files(folder, prefix)
  i = 16
  folder_path = "/Users/iripple/Documents/ces-files/#{folder}/"
  Dir.glob(folder_path + "*").sort.each do |f|
    filename = File.basename(f, File.extname(f))
    File.rename(f, folder_path  + i.to_s + File.extname(f))
    i += 1
  end
end




rename_files('category1youngmompics', 'A')
rename_files('category2momwithnuclearfamily', 'B')
rename_files('category3momwithclans', 'C')
rename_files('category4momwithfriends', 'D')
rename_files('category5momwithapos', 'E')
rename_files('category6momwithdad', 'F' )
rename_files('category7momsolo', 'G')
