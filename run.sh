#!/bin/bash
wget -qO warframe-drops.html "https://n8k6e2y6.ssl.hwcdn.net/repos/hnfvc0o3jnfvc873njb03enrf56.html"
tidy -config tidy_config.txt -o warframe-drops-pretty.html warframe-drops.html

wget -qO "json/mobile/Customs.json" "http://content.warframe.com/MobileExport/Manifest/ExportCustoms.json"
wget -qO "json/mobile/Drones.json" "http://content.warframe.com/MobileExport/Manifest/ExportDrones.json"
wget -qO "json/mobile/Flavour.json" "http://content.warframe.com/MobileExport/Manifest/ExportFlavour.json"
wget -qO "json/mobile/FusionBundles.json" "http://content.warframe.com/MobileExport/Manifest/ExportFusionBundles.json"
wget -qO "json/mobile/Gear.json" "http://content.warframe.com/MobileExport/Manifest/ExportGear.json"
wget -qO "json/mobile/Keys.json" "http://content.warframe.com/MobileExport/Manifest/ExportKeys.json"
wget -qO "json/mobile/Manifest.json" "http://content.warframe.com/MobileExport/Manifest/ExportManifest.json"
wget -qO "json/mobile/Recipes.json" "http://content.warframe.com/MobileExport/Manifest/ExportRecipes.json"
wget -qO "json/mobile/Regions.json" "http://content.warframe.com/MobileExport/Manifest/ExportRegions.json"
wget -qO "json/mobile/RelicArcane.json" "http://content.warframe.com/MobileExport/Manifest/ExportRelicArcane.json"
wget -qO "json/mobile/Resources.json" "http://content.warframe.com/MobileExport/Manifest/ExportResources.json"
wget -qO "json/mobile/Sentinels.json" "http://content.warframe.com/MobileExport/Manifest/ExportSentinels.json"
wget -qO "json/mobile/SortieRewards.json" "http://content.warframe.com/MobileExport/Manifest/ExportSortieRewards.json"
wget -qO "json/mobile/Upgrades.json" "http://content.warframe.com/MobileExport/Manifest/ExportUpgrades.json"
wget -qO "json/mobile/Warframes.json" "http://content.warframe.com/MobileExport/Manifest/ExportWarframes.json"
wget -qO "json/mobile/Weapons.json" "http://content.warframe.com/MobileExport/Manifest/ExportWeapons.json"


wget -qO "json/DE/weekly/rivens/pc.json" "http://n9e5v4d8.ssl.hwcdn.net/repos/weeklyRivensPC.json"
wget -qO "json/DE/weekly/rivens/ps4.json" "http://n9e5v4d8.ssl.hwcdn.net/repos/weeklyRivensPS4.json"
wget -qO "json/DE/weekly/rivens/xb1.json" "http://n9e5v4d8.ssl.hwcdn.net/repos/weeklyRivensXB1.json"
wget -qO "json/DE/weekly/rivens/switch.json" "http://n9e5v4d8.ssl.hwcdn.net/repos/weeklyRivensSWI.json"

wget -qO - "http://content.warframe.com/dynamic/worldState.php" | jq '.| {BuildLabel: .BuildLabel, Version: .Version, MobileVersion: .MobileVersion}' > json/version.json

# wget -qO - "http://content.warframe.com/MobileExport/Manifest/ExportKeys.json" | sed -z 's/\n/\\n/g' > json/Keys.json