class Gdub < Formula
    desc "Gradlew/gradle wrapper"
    homepage "https://www.gdub.rocks/"
    url "https://github.com/emmanuelguerin/gdub/archive/v0.2.0.tar.gz"
    sha256 "6c78232c4b031f17d10f9c8258a6a129e4101e50d6527f47edcd568f9d25fa35"
  
    bottle :unneeded
  
    def install
      bin.install "bin/gw"
    end
  
    test do
      assert_match "No gradlew set up for this project", pipe_output("#{bin}/gw 2>&1")
    end
  end