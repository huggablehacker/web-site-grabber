# wget is generally available on almost any 'nix machine and can produce the mirror from the command line. However, wget seems to have problems converting the relative style sheet URLs properly with many site pages.

# wget respects the robots.txt files, so might not download some of the files in /sites/ or elsewhere. To disable this, include the option -e robots=off in your command line.

# wget includes all query strings such as image file "?itok=qRoiFlnG".

if [ -z "$1" ]; then
	exit 0
fi

wget -q --mirror -p --adjust-extension -e robots=off --base=./ -k -P ./ $1
