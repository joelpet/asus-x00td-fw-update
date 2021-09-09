out/fw_update.zip: \
out/firmware-update/BTFM.bin \
out/firmware-update/BTFM.bin.bak \
out/firmware-update/NON-HLOS.bin \
out/firmware-update/asusfw.img \
out/firmware-update/cmnlib.mbn \
out/firmware-update/cmnlib.mbn.bak \
out/firmware-update/cmnlib64.mbn \
out/firmware-update/cmnlib64.mbn.bak \
out/firmware-update/hyp.mbn \
out/firmware-update/hyp.mbn.bak \
out/firmware-update/keymaster64.mbn \
out/firmware-update/keymaster64.mbn.bak \
out/firmware-update/pmic.elf \
out/firmware-update/pmic.elf.bak \
out/firmware-update/rpm.mbn \
out/firmware-update/rpm.mbn.bak \
out/firmware-update/xbl.elf \
out/firmware-update/xbl.elf.bak \
out/META-INF/com/android/metadata \
out/META-INF/com/google/android/update-binary \
out/META-INF/com/google/android/updater-script \
out/META-INF/com/android/otacert \

	(cd out && zip --recurse-paths "../$@" -- .)

in out out/fw_update:
	mkdir -p "$@"

out/META-INF/com/google/android/updater-script: updater-script
	cp "$<" "$@"

out/META-INF/%: in/UL-ASUS_X00T-WW-17.2017.2012.438-user.zip
	unzip '$<' 'META-INF/$*' -d out

out/firmware-update/%: in/UL-ASUS_X00T-WW-17.2017.2012.438-user.zip
	unzip '$<' 'firmware-update/$*' -d out
