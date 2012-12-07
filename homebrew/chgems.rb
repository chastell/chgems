require 'formula'

class Chgems < Formula

  homepage 'https://github.com/postmodern/chgems#readme'
  url 'https://github.com/downloads/postmodern/chgems/chgems-0.2.4.tar.gz'
  sha1 '12346202c21f0b0ecb91cb9f74abd10ab3fc5384'
  head 'https://github.com/postmodern/chgems.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

end
