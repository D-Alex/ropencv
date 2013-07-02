Dir.chdir(File.dirname(__FILE__)) do
    if !system("cmake . -DGEM_INSTALL=TRUE")
        raise "CMake Configure Error"
    end
end
