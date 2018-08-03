for %%f in (images\*.png) do "..\..\..\Delphi\bmp2tile\bmp2tile.exe" "%%f" -tileoffset 0 -savetiles "%%f.tiles.zx7" -savetilemap "%%f.tilemap.zx7" -fullpalette -savepalette "%%f.palette.bin" -exit
for %%f in (images\fonts\*.png) do "..\..\..\Delphi\bmp2tile\bmp2tile.exe" "%%f" -noremovedupes  -savetiles "%%f.tiles.zx7" -savepalette "%%f.palette.bin" -exit
for %%f in (vgms\music\*.vg*) do java -jar "..\..\PSGLib\PSGlib-master\tools\PSGTool.jar" "%%f"
for %%f in (vgms\sfx\*_2.vg*) do java -jar "..\..\PSGLib\PSGlib-master\tools\PSGTool.jar" "%%f" 2
for %%f in (vgms\sfx\*_23.vg*) do java -jar "..\..\PSGLib\PSGlib-master\tools\PSGTool.jar" "%%f" 23
