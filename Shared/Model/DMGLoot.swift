//
//  DMGLoot.swift
//  DDLootRoller
//
//  Created by Ryan Anderson on 6/16/21.
//

import Foundation

// MARK: DMGLoot
class DMGLoot {
    private let rnd: Distribution = xorshift1024star()
    
    // MARK: Coins
    private func GetPlatinumCoins(plat: Int) -> LootItem {
        // Return a platinum coins item. Coins have their own innate value.
        return LootItem(name: "\(plat) Platinum coins", goldValue: 0)
    }
    
    private func GetGoldCoins(gold: Int) -> LootItem {
        // Return a gold coins item. Coins have their own innate value.
        return LootItem(name: "\(gold) Gold coins", goldValue: 0)
    }
    
    private func GetElectrumCoins(electrum: Int) -> LootItem {
        // Return an electrum coins item. Coins have their own innate value.
        return LootItem(name: "\(electrum) Electrum coins", goldValue: 0)
    }
    
    private func GetSilverCoins(silver: Int) -> LootItem {
        // Return a silver coins item. Coins have their own innate value.
        return LootItem(name: "\(silver) Silver coins", goldValue: 0)
    }
    
    private func GetCopperCoins(copper: Int) -> LootItem {
        // Returnr a copper coins item. Coins have their own innate value.
        return LootItem(name: "\(copper) Copper coins", goldValue: 0)
    }
    
    // MARK: 10GP Gemstones
    private let gemstones10gp = [
        "Azurite (opaque mottled deep blue)",
        "Banded agate (translucent striped brown, blue, white, or red)",
        "Blue quartz (transparent pale blue)",
        "Eye agate (translucent circles of gray, white, brown, blue, or green)",
        "Hematite (opaque gray-black)",
        "Lapis lazuli (opaque light and dark blue with yellow flecks)",
        "Malachite (opaque striated light and dark green)",
        "Moss agate (translucent pink or yellow-white with mossy gray or green markings)",
        "Obsidian (opaque black)",
        "Rhodochrosite (opaque light pink)",
        "Tiger eye (translucent brown with golden center)",
        "Turquoise (opaque light blue-green)"
    ]
    
    private func GetGemstone10GP() -> LootItem {
        // Get a random gemstone from our list
        let gemstone = gemstones10gp[rnd.getInt(min: 0, max: gemstones10gp.count)]
        // Return the selected gemstone at a value of 10gp
        return LootItem(name: gemstone, goldValue: 10.0)
    }
    
    // MARK: 50GP Gemstones
    private let gemstones50gp = [
        "Bloodstone (opaque dark gray with red flecks)",
        "Carnelian (opaque orange to red-brown)",
        "Chalcedony (opaque white)",
        "Chrysoprase (translucent green)",
        "Citrine (transparent pale yellow-brown)",
        "Jasper (opaque blue, black, or brown)",
        "Moonstone (translucent white with pale blue glow)",
        "Onyx (opaque bands of black and white, or pure black or white)",
        "Quartz (transparent white, smoky gray, or yellow)",
        "Sardonyx (opaque bands of red and white)",
        "Star rose quartz (translucent rosy stone with white star-shaped center)",
        "Zircon (transparent pale blue-green)"
    ]
    
    private func GetGemstone50GP() -> LootItem {
        // Get a random gemstone from our lsit
        let gemstone = gemstones50gp[rnd.getInt(min: 0, max: gemstones50gp.count)]
        // Return the selected gemstone at a value of 50gp
        return LootItem(name: gemstone, goldValue: 50.0)
    }
    
    // MARK: 100GP Gemstones
    private let gemstones100gp = [
        "Amber (transparent watery gold to rich gold)",
        "Amethyst (transparent deep purple)",
        "Chrysoberyl (transparent yellow-green to pale green)",
        "Coral (opaque crimson)",
        "Garnet (transparent red, brown-green , or violet)",
        "jade (translucent light green, deep green , or white)",
        "jet (opaque deep black)",
        "Pearl (opaque lustrous white , yellow, or pink)",
        "Spinel (transparent red, red-brown, or deep green)",
        "Tourmaline (transparent pale green , blue, brown , or red)"
    ]
    
    private func GetGemstone100GP() -> LootItem {
        // Get a random gemstone from out list
        let gemstone = gemstones100gp[rnd.getInt(min: 0, max: gemstones100gp.count)]
        // Return the selected gemstone at a value of 100gp
        return LootItem(name: gemstone, goldValue: 100.0)
    }
    
    // MARK: 500GP Gemstones
    private let gemstones500gp = [
        "Alexandrite (transparent dark green)",
        "Aquamarine (transparent pale blue-green)",
        "Black pearl (opaque pure black)",
        "Blue spinel (transparent deep blue)",
        "Peridot (transparent rich olive green)",
        "Topaz (transparent golden yellow)"
    ]
    
    private func GetGemstone500GP() -> LootItem {
        // Get a ramdon gemstone from our list
        let gemstone = gemstones500gp[rnd.getInt(min: 0, max: gemstones500gp.count)]
        // Return the selected gemstone at a value of 500gp
        return LootItem(name: gemstone, goldValue: 500.0)
    }
    
    // MARK: 1,000GP Gemstones
    private let gemstones1000gp = [
        "Black opal (translucent dark green with black mottling and golden flecks)",
        "Blue sapphire (transparent blue-white to medium blue)",
        "Emerald (transparent deep bright green)",
        "Fire opal (translucent fiery red)",
        "Opal (translucent pale blue with green and golden mottling)",
        "Star ruby (translucent ruby with white star-shaped center)",
        "Star sapphire (translucent blue sapphire with white star-shaped center)",
        "Yellow sapphire (transparent fier y yellow or yellow-green)"
    ]
    
    private func GetGemstone1000GP() -> LootItem {
        // Get a ramdon gemstone from our list
        let gemstone = gemstones1000gp[rnd.getInt(min: 0, max: gemstones1000gp.count)]
        // Return the selected gemstone at a value of 1000gp
        return LootItem(name: gemstone, goldValue: 1000.0)
    }
    
    // MARK: 5,000GP Gemstones
    private let gemstones5000gp = [
        "Black sapphire (translucent lustrous black with glowing highlights)",
        "Diamond (transparent blue-white, canary, pink, brown, or blue)",
        "Jacinth (transparent fiery orange)",
        "Ruby (transparent clear red to deep crimson)"
    ]
    
    private func GetGemstone5000GP() -> LootItem {
        // Get a ramdon gemstone from our list
        let gemstone = gemstones5000gp[rnd.getInt(min: 0, max: gemstones5000gp.count)]
        // Return the selected gemstone at a value of 5000gp
        return LootItem(name: gemstone, goldValue: 5000.0)
    }
    
    // MARK: 25GP Art Objects
    private let artobjects25gp = [
        "Silver ewer",
        "Carved bone statuette",
        "Small gold bracelet",
        "Cloth-of-gold vestments",
        "Black velvet mask stitched with silver thread",
        "Copper chalice with silver filigree",
        "Pair of engraved bone dice",
        "Small mirror set in a painted wooden frame",
        "Embroidered silk handkerchief",
        "Gold locket with a painted portrait inside"
    ]
    
    private func GetArtObject25GP() -> LootItem {
        // Get a ramdon art object from our list
        let artobject = artobjects25gp[rnd.getInt(min: 0, max: artobjects25gp.count)]
        // Return the selected art object at a value of 25gp
        return LootItem(name: artobject, goldValue: 25.0)
    }
    
    // MARK: 250GP Art Objects
    private let artobjects250gp = [
        "Gold ring set with bloodstones",
        "Carved ivory statuette",
        "Large gold bracelet",
        "Silver necklace with a gemstone pendant",
        "Bronze crown",
        "Silk robe with gold embroidery",
        "Large well-made tapestry",
        "Brass mug with jade inlay",
        "Box of turquoise animal figurines",
        "Gold bird cage with electrum filigree"
    ]
    
    private func GetArtObject250GP() -> LootItem {
        // Get a ramdon art object from our list
        let artobject = artobjects250gp[rnd.getInt(min: 0, max: artobjects250gp.count)]
        // Return the selected art object at a value of 250gp
        return LootItem(name: artobject, goldValue: 250.0)
    }
    
    // MARK: 750GP Art Objects
    private let artobjects750gp = [
        "Silver chalice set with moonstones",
        "Silver-plated steel longsword with jet set in hilt",
        "Carved harp of exotic wood with ivory inlay and zircon gems",
        "Small gold idol",
        "Gold dragon comb set with red garnets as eyes",
        "Bottle stopper cork embossed with gold leaf and set with amethysts",
        "Ceremonial electrum dagger with a black pearl in the pommel",
        "Silver and gold brooch",
        "Obsidian statuette with gold fittings and inlay",
        "Painted gold war mask"
    ]
    
    private func GetArtObject750GP() -> LootItem {
        // Get a ramdon art object from our list
        let artobject = artobjects750gp[rnd.getInt(min: 0, max: artobjects750gp.count)]
        // Return the selected art object at a value of 750gp
        return LootItem(name: artobject, goldValue: 750.0)
    }
    
    // MARK: 2,500GP Art Objects
    private let artobjects2500gp = [
        "Fine gold chain set with a fire opal",
        "Old masterpiece painting",
        "Embroidered silk and velvet mantle set with numerous moonstones",
        "Platinum bracelet set with a sapphire",
        "Embroidered glove set with jewel chips",
        "Jeweled anklet",
        "Gold music box",
        "Gold circlet set with four aquamarines",
        "Eye patch with a mock eye set in blue sapphire and moonstone",
        "A necklace string of small pink pearls"
    ]
    
    private func GetArtObject2500GP() -> LootItem {
        // Get a ramdon art object from our list
        let artobject = artobjects2500gp[rnd.getInt(min: 0, max: artobjects2500gp.count)]
        // Return the selected art object at a value of 2500gp
        return LootItem(name: artobject, goldValue: 2500.0)
    }
    
    // MARK: 7,500GP Art Objects
    private let artobjects7500gp = [
        "Jeweled gold crown",
        "jeweled platinum ring",
        "Small gold statuette set with rubies",
        "Gold cup set with emeralds",
        "Gold jewelry box with platinum filigree",
        "Painted gold child's sarcophagus",
        "Jade game board with solid gold playing pieces",
        "Bejeweled ivory drinking horn with gold filigree"
    ]
    
    private func GetArtObject7500GP() -> LootItem {
        // Get a ramdon art object from our list
        let artobject = artobjects7500gp[rnd.getInt(min: 0, max: artobjects7500gp.count)]
        // Return the selected art object at a value of 7500gp
        return LootItem(name: artobject, goldValue: 7500.0)
    }
    
    // MARK: Magic Items A
    private let magicitemsa = [
        "Potion of healing",
        "Spell scroll (cantrip)",
        "Potion of climbing",
        "Spell scroll (1st level)",
        "Spell scroll (2nd level)",
        "Potion of greater healing",
        "Bag of holding",
        "Driftglobe"
    ]
    
    private func GetMagicItemA() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        var magicitem: String = ""
        if roll <= 50 { magicitem = magicitemsa[0] }            // Potion of healing
        else if roll <= 60 { magicitem = magicitemsa[1] }       // Spell scroll (cantrip)
        else if roll <= 70 { magicitem = magicitemsa[2] }       // Potion of climbing
        else if roll <= 90 { magicitem = magicitemsa[3] }       // Spell scroll (1st level)
        else if roll <= 94 { magicitem = magicitemsa[4] }       // Spell scroll (2nd level)
        else if roll <= 98 { magicitem = magicitemsa[5] }       // Potion of greater healing
        else if roll <= 99 { magicitem = magicitemsa[6] }       // Bag of holding
        else if roll <= 100 { magicitem = magicitemsa[7] }      // Driftglobe
        
        // Return the selected magic item. Magic items have no intrinsic value.
        return LootItem(name: magicitem, goldValue: 0)
    }
    
    // MARK: Magic Items B
    private let magicitemsb = [
        "Potion of greater healing",
        "Potion of fire breath",
        "Potion of resistance",
        "Ammunition, +1",
        "Potion of animal friendship",
        "Potion of hill giant strength",
        "Potion of growth",
        "Potion of water breathing",
        "Spell scroll (2nd level)",
        "Spell scroll (3rd level)",
        "Bag of holding",
        "Keoghtom's ointment",
        "Oil of slipperiness",
        "Dust of disappearance",
        "Dust of dryness",
        "Dust of sneezing and choking",
        "Elemental gem",
        "Philter of love",
        "Alchemy jug",
        "Cap of water breathing",
        "Cloak of the manta ray",
        "Driftglobe",
        "Goggles of night",
        "Helm of comprehending languages",
        "Immovable rod",
        "Lantern of revealing",
        "Mariner's armor",
        "Mithral armor",
        "Potion of poison",
        "Ring of swimming",
        "Robe of useful items",
        "Rope of climbing",
        "Saddle of the cavalier",
        "Wand of magic detection",
        "Wand of secrets"
    ]
    
    private func GetMagicItemB() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        var magicitem: String = ""
        if roll <= 15 { magicitem = magicitemsa[0] }            // Potion of greater healing
        else if roll <= 22 { magicitem = magicitemsa[1] }       // Potion of fire breath
        else if roll <= 29 { magicitem = magicitemsa[2] }       // Potion of resistance
        else if roll <= 34 { magicitem = magicitemsa[3] }       // Ammunition, +1
        else if roll <= 39 { magicitem = magicitemsa[4] }       // Potion of animal friendship
        else if roll <= 44 { magicitem = magicitemsa[5] }       // Potion of hill giant strength
        else if roll <= 49 { magicitem = magicitemsa[6] }       // Potion of growth
        else if roll <= 54 { magicitem = magicitemsa[7] }       // Potion of water breathing
        else if roll <= 59 { magicitem = magicitemsa[8] }       // Spell scroll (2nd level)
        else if roll <= 64 { magicitem = magicitemsa[9] }       // Spell scroll (3rd level)
        else if roll <= 67 { magicitem = magicitemsa[10] }      // Bag of holding
        else if roll <= 70 { magicitem = magicitemsa[11] }      // Keoghtom's ointment
        else if roll <= 73 { magicitem = magicitemsa[12] }      // Oil of slipperiness
        else if roll <= 75 { magicitem = magicitemsa[13] }      // Dust of disappearance
        else if roll <= 77 { magicitem = magicitemsa[14] }      // Dust of dryness
        else if roll <= 79 { magicitem = magicitemsa[15] }      // Dust of sneezing and choking
        else if roll <= 81 { magicitem = magicitemsa[16] }      // Elemental gem
        else if roll <= 83 { magicitem = magicitemsa[17] }      // Philter of love
        else if roll <= 84 { magicitem = magicitemsa[18] }      // Alchemy jug
        else if roll <= 85 { magicitem = magicitemsa[19] }      // Cap of water breathing
        else if roll <= 86 { magicitem = magicitemsa[20] }      // Cloak of the manta ray
        else if roll <= 87 { magicitem = magicitemsa[21] }      // Driftglobe
        else if roll <= 88 { magicitem = magicitemsa[22] }      // Goggles of night
        else if roll <= 89 { magicitem = magicitemsa[23] }      // Helm of comprehending languages
        else if roll <= 90 { magicitem = magicitemsa[24] }      // Immovable rod
        else if roll <= 91 { magicitem = magicitemsa[25] }      // Lantern of revealing
        else if roll <= 92 { magicitem = magicitemsa[26] }      // Mariner's armor
        else if roll <= 93 { magicitem = magicitemsa[27] }      // Mithral armor
        else if roll <= 94 { magicitem = magicitemsa[28] }      // Potion of poison
        else if roll <= 95 { magicitem = magicitemsa[29] }      // Ring of swimming
        else if roll <= 96 { magicitem = magicitemsa[30] }      // Robe of useful items
        else if roll <= 97 { magicitem = magicitemsa[31] }      // Rope of climbing
        else if roll <= 98 { magicitem = magicitemsa[32] }      // Saddle of the cavalier
        else if roll <= 99 { magicitem = magicitemsa[33] }      // Wand of magic detection
        else if roll <= 100 { magicitem = magicitemsa[34] }     // Wand of secrets
        
        // Return the selected magic item. Magic items have no intrinsic value.
        return LootItem(name: magicitem, goldValue: 0)
    }
    
    // MARK: GetLoot Function
    public func GetLoot(challengeRating: Int, isIndividual: Bool) -> [LootItem] {
        var loot: [LootItem] = []               // Our loot object. Will return after we populate it.
        let d100 = rnd.getInt(min: 1, max: 100) // Make a d100 roll for the table
        
        if isIndividual {                       // Individual treasure
            if challengeRating <= 4 {           // CR 0-4
                if d100 <= 30 {
                    var copper = 0
                    for _ in 1...5 {
                        copper += rnd.getInt(min: 1, max: 6)
                    }
                    loot.append(GetCopperCoins(copper: copper))
                }
                else if d100 <= 60 {
                    var silver = 0
                    for _ in 1...4 {
                        silver += rnd.getInt(min: 1, max: 6)
                    }
                    loot.append(GetSilverCoins(silver: silver))
                }
                else if d100 <= 70 {
                    var electrum = 0
                    for _ in 1...3 {
                        electrum += rnd.getInt(min: 1, max: 6)
                    }
                    loot.append(GetElectrumCoins(electrum: electrum))
                }
                else if d100 <= 95 {
                    var gold = 0
                    for _ in 1...3 {
                        gold += rnd.getInt(min: 1, max: 6)
                    }
                    loot.append(GetGoldCoins(gold: gold))
                }
                else if d100 <= 100 {
                    var platinum = 0
                    platinum = rnd.getInt(min: 1, max: 6)
                    loot.append(GetPlatinumCoins(plat: platinum))
                }
            }
            else if challengeRating <= 10 {     // CR 5-10
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
            else if challengeRating <= 16 {     // CR 11-16
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
            else if challengeRating >= 17 {     // CR 17+
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
        } else {                                // Treasure hoard
            if challengeRating <= 4 {           // CR 0-4
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
            else if challengeRating <= 10 {     // CR 5-10
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
            else if challengeRating <= 16 {     // CR 11-16
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
            else if challengeRating >= 17 {     // CR 17+
                loot.append(LootItem(name: "NOT IMPLIMENTED", goldValue: 0))
            }
        }
        
        return loot
    }
}
