cd C:/XilinxWorkSpace/PongV2/mb
if { [ catch { xload xmp mb.xmp } result ] } {
  exit 10
}
xset intstyle default
save proj
exit 0
