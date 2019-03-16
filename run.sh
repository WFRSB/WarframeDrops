#!/bin/bash
wget -qO warframe-drops.html "https://n8k6e2y6.ssl.hwcdn.net/repos/hnfvc0o3jnfvc873njb03enrf56.html"
tidy -config tidy_config.txt -o warframe-drops-pretty.html warframe-drops.html

wget -qO "json/Customs.json" "http://content.warframe.com/MobileExport/Manifest/ExportCustoms.json"
wget -qO "json/Drones.json" "http://content.warframe.com/MobileExport/Manifest/ExportDrones.json"
wget -qO "json/Flavour.json" "http://content.warframe.com/MobileExport/Manifest/ExportFlavour.json"
wget -qO "json/FusionBundles.json" "http://content.warframe.com/MobileExport/Manifest/ExportFusionBundles.json"
wget -qO "json/Gear.json" "http://content.warframe.com/MobileExport/Manifest/ExportGear.json"
wget -qO "json/Keys.json" "http://content.warframe.com/MobileExport/Manifest/ExportKeys.json"
wget -qO "json/Manifest.json" "http://content.warframe.com/MobileExport/Manifest/ExportManifest.json"
wget -qO "json/Recipes.json" "http://content.warframe.com/MobileExport/Manifest/ExportRecipes.json"
wget -qO "json/Regions.json" "http://content.warframe.com/MobileExport/Manifest/ExportRegions.json"
wget -qO "json/RelicArcane.json" "http://content.warframe.com/MobileExport/Manifest/ExportRelicArcane.json"
wget -qO "json/Resources.json" "http://content.warframe.com/MobileExport/Manifest/ExportResources.json"
wget -qO "json/Sentinels.json" "http://content.warframe.com/MobileExport/Manifest/ExportSentinels.json"
wget -qO "json/SortieRewards.json" "http://content.warframe.com/MobileExport/Manifest/ExportSortieRewards.json"
wget -qO "json/Upgrades.json" "http://content.warframe.com/MobileExport/Manifest/ExportUpgrades.json"
wget -qO "json/Warframes.json" "http://content.warframe.com/MobileExport/Manifest/ExportWarframes.json"
wget -qO "json/Weapons.json" "http://content.warframe.com/MobileExport/Manifest/ExportWeapons.json"

wget -qO - "http://content.warframe.com/dynamic/worldState.php" | jq '.| {BuildLabel: .BuildLabel, Version: .Version, MobileVersion: .MobileVersion}' > json/version.json

# wget -qO - "http://content.warframe.com/MobileExport/Manifest/ExportKeys.json" | sed -z 's/\n/\\n/g' > json/Keys.json