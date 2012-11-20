require 'formula'

class Chgems < Formula

  url 'https://github.com/downloads/postmodern/chgems/chgems-0.2.4.tar.gz'
  homepage 'https://github.com/postmodern/chgems#readme'
  md5 '51fd2c6021d95495d41f3a2c4594ccc3'
  head 'https://github.com/postmodern/chgems.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Add chgems to ~/.bashrc or ~/.profile:

      . #{prefix}/share/chgems/chgems.sh

    For system-wide installation, add the above text /etc/profile.

    EOS
  end

end
