PLUGIN_FILE=plugins
BUNDLE_DIR=bundle

if [ ! -e "$PLUGIN_FILE" ]; then
	echo "No plugin file found. Exiting"
	exit 1
fi

if [ ! -d "$BUNDLE_DIR" ]; then
	mkdir $BUNDLE_DIR
fi

# Special handling of mutt.vim
if [ ! -d "$BUNDLE_DIR/mutt/" ]; then
	mkdir -p "$BUNDLE_DIR/mutt/ftplugin/mail"
	cp mutt.vim "$BUNDLE_DIR/mutt/ftplugin/mail/"
	echo "Installed mutt.vim"
fi


while read url
do
	name=`echo $url | cut -d '/' -f 5- | sed 's/\(.*\)..../\1/'`

	if [ -d "$BUNDLE_DIR/$name" ]; then
		cd $BUNDLE_DIR/$name
		git pull
		cd -
	else
		git clone $url $BUNDLE_DIR/$name
	fi
done < $PLUGIN_FILE
