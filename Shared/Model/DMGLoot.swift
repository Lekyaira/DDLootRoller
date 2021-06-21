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
        let gemstone = gemstones10gp[rnd.getInt(min: 0, max: gemstones10gp.count-1)]
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
        let gemstone = gemstones50gp[rnd.getInt(min: 0, max: gemstones50gp.count-1)]
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
        let gemstone = gemstones100gp[rnd.getInt(min: 0, max: gemstones100gp.count-1)]
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
        let gemstone = gemstones500gp[rnd.getInt(min: 0, max: gemstones500gp.count-1)]
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
        let gemstone = gemstones1000gp[rnd.getInt(min: 0, max: gemstones1000gp.count-1)]
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
        let gemstone = gemstones5000gp[rnd.getInt(min: 0, max: gemstones5000gp.count-1)]
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
        let artobject = artobjects25gp[rnd.getInt(min: 0, max: artobjects25gp.count-1)]
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
        let artobject = artobjects250gp[rnd.getInt(min: 0, max: artobjects250gp.count-1)]
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
        let artobject = artobjects750gp[rnd.getInt(min: 0, max: artobjects750gp.count-1)]
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
        let artobject = artobjects2500gp[rnd.getInt(min: 0, max: artobjects2500gp.count-1)]
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
        let artobject = artobjects7500gp[rnd.getInt(min: 0, max: artobjects7500gp.count-1)]
        // Return the selected art object at a value of 7500gp
        return LootItem(name: artobject, goldValue: 7500.0)
    }
    
    // MARK: Magic Items A
    private let magicitemsa = [
        (1, 50, "Potion of healing"),
        (51, 60, "Spell scroll (cantrip)"),
        (61, 70, "Potion of climbing"),
        (71, 90, "Spell scroll (1st level)"),
        (91, 94, "Spell scroll (2nd level)"),
        (95, 98, "Potion of greater healing"),
        (99, 99, "Bag of holding"),
        (100, 100, "Driftglobe")
    ]
    
    private func GetMagicItemA() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsa {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
//        var magicitem: String = ""
//        if roll <= 50 { magicitem = magicitemsa[0] }            // Potion of healing
//        else if roll <= 60 { magicitem = magicitemsa[1] }       // Spell scroll (cantrip)
//        else if roll <= 70 { magicitem = magicitemsa[2] }       // Potion of climbing
//        else if roll <= 90 { magicitem = magicitemsa[3] }       // Spell scroll (1st level)
//        else if roll <= 94 { magicitem = magicitemsa[4] }       // Spell scroll (2nd level)
//        else if roll <= 98 { magicitem = magicitemsa[5] }       // Potion of greater healing
//        else if roll <= 99 { magicitem = magicitemsa[6] }       // Bag of holding
//        else if roll <= 100 { magicitem = magicitemsa[7] }      // Driftglobe
//
//        // Return the selected magic item. Magic items have no intrinsic value.
//        return LootItem(name: magicitem, goldValue: 0)
    }
    
    // MARK: Magic Items B
    private let magicitemsb = [
        (1, 15, "Potion of greater healing"),
        (16, 22, "Potion of fire breath"),
        (23, 29, "Potion of resistance"),
        (30, 34, "Ammunition, +1"),
        (35, 39, "Potion of animal friendship"),
        (40, 44, "Potion of hill giant strength"),
        (45, 49, "Potion of growth"),
        (50, 54, "Potion of water breathing"),
        (55, 59, "Spell scroll (2nd level)"),
        (60, 64, "Spell scroll (3rd level)"),
        (65, 67, "Bag of holding"),
        (68, 70, "Keoghtom's ointment"),
        (71, 73, "Oil of slipperiness"),
        (74, 75, "Dust of disappearance"),
        (76, 77, "Dust of dryness"),
        (78, 79, "Dust of sneezing and choking"),
        (80, 81, "Elemental gem"),
        (82, 83, "Philter of love"),
        (84, 84, "Alchemy jug"),
        (85, 85, "Cap of water breathing"),
        (86, 86, "Cloak of the manta ray"),
        (87, 87, "Driftglobe"),
        (88, 88, "Goggles of night"),
        (89, 89, "Helm of comprehending languages"),
        (90, 90, "Immovable rod"),
        (91, 91, "Lantern of revealing"),
        (92, 92, "Mariner's armor"),
        (93, 93, "Mithral armor"),
        (94, 94, "Potion of poison"),
        (95, 95, "Ring of swimming"),
        (96, 96, "Robe of useful items"),
        (97, 97, "Rope of climbing"),
        (98, 98, "Saddle of the cavalier"),
        (99, 99, "Wand of magic detection"),
        (100, 100, "Wand of secrets")
    ]
    
    private func GetMagicItemB() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsb {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
//    private func GetMagicItemB() -> LootItem {
//        // Get a ramdon magic item from our list.
//        // Distribution of magic items is not even.
//        let roll = rnd.getInt(min: 1, max: 100)
//        var magicitem: String = ""
//        if roll <= 15 { magicitem = magicitemsa[0] }            // Potion of greater healing
//        else if roll <= 22 { magicitem = magicitemsa[1] }       // Potion of fire breath
//        else if roll <= 29 { magicitem = magicitemsa[2] }       // Potion of resistance
//        else if roll <= 34 { magicitem = magicitemsa[3] }       // Ammunition, +1
//        else if roll <= 39 { magicitem = magicitemsa[4] }       // Potion of animal friendship
//        else if roll <= 44 { magicitem = magicitemsa[5] }       // Potion of hill giant strength
//        else if roll <= 49 { magicitem = magicitemsa[6] }       // Potion of growth
//        else if roll <= 54 { magicitem = magicitemsa[7] }       // Potion of water breathing
//        else if roll <= 59 { magicitem = magicitemsa[8] }       // Spell scroll (2nd level)
//        else if roll <= 64 { magicitem = magicitemsa[9] }       // Spell scroll (3rd level)
//        else if roll <= 67 { magicitem = magicitemsa[10] }      // Bag of holding
//        else if roll <= 70 { magicitem = magicitemsa[11] }      // Keoghtom's ointment
//        else if roll <= 73 { magicitem = magicitemsa[12] }      // Oil of slipperiness
//        else if roll <= 75 { magicitem = magicitemsa[13] }      // Dust of disappearance
//        else if roll <= 77 { magicitem = magicitemsa[14] }      // Dust of dryness
//        else if roll <= 79 { magicitem = magicitemsa[15] }      // Dust of sneezing and choking
//        else if roll <= 81 { magicitem = magicitemsa[16] }      // Elemental gem
//        else if roll <= 83 { magicitem = magicitemsa[17] }      // Philter of love
//        else if roll <= 84 { magicitem = magicitemsa[18] }      // Alchemy jug
//        else if roll <= 85 { magicitem = magicitemsa[19] }      // Cap of water breathing
//        else if roll <= 86 { magicitem = magicitemsa[20] }      // Cloak of the manta ray
//        else if roll <= 87 { magicitem = magicitemsa[21] }      // Driftglobe
//        else if roll <= 88 { magicitem = magicitemsa[22] }      // Goggles of night
//        else if roll <= 89 { magicitem = magicitemsa[23] }      // Helm of comprehending languages
//        else if roll <= 90 { magicitem = magicitemsa[24] }      // Immovable rod
//        else if roll <= 91 { magicitem = magicitemsa[25] }      // Lantern of revealing
//        else if roll <= 92 { magicitem = magicitemsa[26] }      // Mariner's armor
//        else if roll <= 93 { magicitem = magicitemsa[27] }      // Mithral armor
//        else if roll <= 94 { magicitem = magicitemsa[28] }      // Potion of poison
//        else if roll <= 95 { magicitem = magicitemsa[29] }      // Ring of swimming
//        else if roll <= 96 { magicitem = magicitemsa[30] }      // Robe of useful items
//        else if roll <= 97 { magicitem = magicitemsa[31] }      // Rope of climbing
//        else if roll <= 98 { magicitem = magicitemsa[32] }      // Saddle of the cavalier
//        else if roll <= 99 { magicitem = magicitemsa[33] }      // Wand of magic detection
//        else if roll <= 100 { magicitem = magicitemsa[34] }     // Wand of secrets
//
//        // Return the selected magic item. Magic items have no intrinsic value.
//        return LootItem(name: magicitem, goldValue: 0)
//    }
    
    // MARK: Magic Items C
    private let magicitemsc = [
        (1, 15, "Potion of superior healing"),
        (16, 22, "Spell scroll (4th level)"),
        (23, 27, "Ammunition, +2"),
        (28, 32, "Potion ofclairvoyance"),
        (33, 37, "Potion of diminution"),
        (38, 42, "Potion of gaseous form"),
        (43, 47, "Potion of frost giant strength"),
        (48, 52, "Potion of stone giant strength"),
        (53, 57, "Potion of heroism"),
        (58, 62, "Potion ofinvulnerability"),
        (63, 67, "Potion of mind reading"),
        (68, 72, "Spell scroll (5th level)"),
        (73, 75, "Elixir of health"),
        (76, 78, "Oil ofetherealness"),
        (79, 81, "Potion of fire giant strength"),
        (82, 84, "Quaal's feather token"),
        (85, 87, "Scroll of protection"),
        (88, 89, "Bag of beans"),
        (90, 91, "Bead of force"),
        (92, 92, "Chime of opening"),
        (93, 93, "Decanter of endless water"),
        (94, 94, "Eyes of minute seeing"),
        (95, 95, "Folding boat"),
        (96, 96, "Heward's handy haversack"),
        (97, 97, "Horseshoes of speed"),
        (98, 98, "Necklace of fireballs"),
        (99, 99, "Periapt of health"),
        (100, 100, "Sending stones")
    ]
    
    private func GetMagicItemC() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsc {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items D
    private let magicitemsd = [
        (1, 20, "Potion of supreme healing"),
        (21, 30, "Potion of invisibility"),
        (31, 40, "Potion of speed"),
        (41, 50, "Spell scroll (6th level)"),
        (51, 57, "Spell scroll (7th level)"),
        (58, 62, "Ammunition, +3"),
        (63, 67, "Oil of sharpness"),
        (68, 72, "Potion offlying"),
        (73, 77, "Potion of cloud giant strength"),
        (78, 82, "Potion of longevity"),
        (83, 87, "Potion of vitality"),
        (88, 92, "Spell scroll (8th level)"),
        (93, 95, "Horseshoes of a zephyr"),
        (96, 98, "Nolzur's marvelous pigments"),
        (99, 99, "Bag of devouring"),
        (100, 100, "Portable hole")
    ]
    
    private func GetMagicItemD() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsd {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items E
    private let magicitemse = [
        (1, 30, "Spell scroll (8th level)"),
        (31, 55, "Potion of storm giant strength"),
        (56, 70, "Potion of supreme healing"),
        (71, 85, "Spell scroll (9th level)"),
        (86, 93, "Universal solvent"),
        (94, 98, "Arrow of slaying"),
        (99, 100, "Sovereign glue")
    ]
    
    private func GetMagicItemE() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemse {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items F
    private let magicitemsf = [
        (1, 15, "Weapon, +1"),
        (16, 18, "Shield,+1"),
        (19, 21, "Sentinel shield"),
        (22, 23, "Amulet of proof against detection and location"),
        (24,25, "Boots of elvenkind"),
        (26, 27, "Boots of striding and springing"),
        (28, 29, "Bracers of archery"),
        (30, 31, "Brooch of shielding"),
        (32, 33, "Broom of flying"),
        (34, 35, "Cloak of elvenkind"),
        (36, 37, "Cloak of protection"),
        (38, 39, "Gauntlets of ogre power"),
        (40, 41, "Hat of disguise"),
        (42, 43, "Javelin of lightning"),
        (44, 45, "Pearl of power"),
        (46, 47, "Rod of the pact keeper, +1"),
        (48, 49, "Slippers of spider climbing"),
        (50, 51, "Staff of the adder"),
        (52, 53, "Staff of the python"),
        (54, 55, "Sword of vengeance"),
        (56, 57, "Trident of fish command"),
        (58, 59, "Wand of magic missiles"),
        (60, 61, "Wand of the war mage, +1"),
        (62, 63, "Wand of web"),
        (64, 65, "Weapon ofwarning"),
        (66, 66, "Adamantine armor (chain mail)"),
        (67, 67, "Adamantine armor (chain shirt)"),
        (68, 68, "Adamantine armor (scale mail)"),
        (69, 69, "Bag of tricks (gray)"),
        (70, 70, "Bag of tricks (rust)"),
        (71, 71, "Bag of tricks (tan)"),
        (72, 72, "Boots of the winterlands"),
        (73, 73, "Circlet of blasting"),
        (74, 74, "Deck of illusions"),
        (75, 75, "Eversmoking bottle"),
        (76, 76, "Eyes of charming"),
        (77, 77, "Eyes of the eagle"),
        (78, 78, "Figurine of wondrous power (silver raven)"),
        (79, 79, "Gem of brightness"),
        (80, 80, "Gloves of missile snaring"),
        (81, 81, "Gloves of swimming and climbing"),
        (82, 82, "Gloves o f thievery"),
        (83, 83, "Headband of intellect"),
        (84, 84, "Helm oftelepathy"),
        (85, 85, "Instrument of the bards (Doss lute)"),
        (86, 86, "Instrument of the bards (Fochlucan bandore)"),
        (87, 87, "Instrument of the bards (Mac-Fuimidh cittern)"),
        (88, 88, "Medallion ofthoughts"),
        (89, 89, "Necklace of adaptation"),
        (90, 90, "Periapt of wound closure"),
        (91, 91, "Pipes of haunting"),
        (92, 92, "Pipes of the sewers"),
        (93, 93, "Ring of jumping"),
        (94, 94, "Ring of mind shielding"),
        (95, 95, "Ring of warmth"),
        (96, 96, "Ring ofwater walking"),
        (97, 97, "Quiver of Ehlonna"),
        (98, 98, "Stone of good luck"),
        (99, 99, "Wind fan"),
        (100, 100, "Winged boots")
    ]
    
    private func GetMagicItemF() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsf {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items G
    private let magicitemsg = [
        (1, 11, "Weapon, +2"),
        (12, 14, "Figurine of wondrous power (roll d8)"),
        (15, 15, "Adamantine armor (breastplate)"),
        (16, 16, "Adamantine armor (splint)"),
        (17, 17, "Amulet of health"),
        (18, 18, "Armor of vulnerability"),
        (19, 19, "Arrow-catching shield"),
        (20, 20, "Belt of dwarvenkind"),
        (21, 21, "Belt of hill giant strength"),
        (22, 22, "Berserker axe"),
        (23, 23, "Boots of levitation"),
        (24, 24, "Boots of speed"),
        (25, 25, "Bowl of commanding water elementals"),
        (26, 26, "Bracers ofdefense"),
        (27, 27, "Brazier of commanding fire elementals"),
        (28, 28, "Cape of the mountebank"),
        (29, 29, "Censer of controlling air elementals"),
        (30, 30, "Armor, +1 chain mail"),
        (31, 31, "Armor of resistance (chain mail)"),
        (32, 32, "Armor,+1 chain shirt"),
        (33, 33, "Armor of resistance (chain shirt)"),
        (34, 34, "Cloak of displacement"),
        (35, 35, "Cloak ofthe bat"),
        (36, 36, "Cube afforce"),
        (37, 37, "Daern's instant fortress"),
        (38, 38, "Dagger of venom"),
        (39, 39, "Dimensional shackles"),
        (40, 40, "Dragon slayer"),
        (41, 41, "Elven chain"),
        (42, 42, "Flame tongue"),
        (43, 43, "Gem of seeing"),
        (44, 44, "Giant slayer"),
        (45, 45, "Clamoured studded leather"),
        (46, 46, "Helm ofteleportation"),
        (47, 47, "Horn of blasting"),
        (48, 48, "Horn of Valhalla (silver or brass)"),
        (49, 49, "Instrument of the bards (Canaith mandolin)"),
        (50, 50, "Instrument ofthe bards (Cii lyre)"),
        (51, 51, "Ioun stone (awareness)"),
        (52, 52, "Ioun stone (protection)"),
        (53, 53, "Ioun stone (reserve)"),
        (54, 54, "Ioun stone (sustenance)"),
        (55, 55, "Iron bands of Bilarro"),
        (56, 56, "Armor, +1 leather"),
        (57, 57, "Armor of resistance (leather)"),
        (58, 58, "Mace of disruption"),
        (59, 59, "Mace of smiting"),
        (60, 60, "Mace of terror"),
        (61, 61, "Mantle of spell resistance"),
        (62, 62, "Necklace of prayer beads"),
        (63, 63, "Peri apt of proof against poison"),
        (64, 64, "Ring of animal influence"),
        (65, 65, "Ring of evasion"),
        (66, 66, "Ring of feather falling"),
        (67, 67, "Ring of free action"),
        (68, 68, "Ring of protection"),
        (69, 69, "Ring of resistance"),
        (70, 70, "Ring of spell storing"),
        (71, 71, "Ring ofthe ram"),
        (72, 72, "Ring of X-ray vision"),
        (73, 73, "Robe ofeyes"),
        (74, 74, "Rod of rulership"),
        (75, 75, "Rod ofthe pact keeper, +2"),
        (76, 76, "Rope of entanglement"),
        (77, 77, "Armor, +1 scale mail"),
        (78, 78, "Armor of resistance (scale mail)"),
        (79, 79, "Shield, +2"),
        (80, 80, "Shield of missile attraction"),
        (81, 81, "Staff of charming"),
        (82, 82, "Staff of healing"),
        (83, 83, "Staff of swarming insects"),
        (84, 84, "Staff of the woodlands"),
        (85, 85, "Staff of withering"),
        (86, 86, "Stone of controlling earth elementals"),
        (87, 87, "Sun blade"),
        (88, 88, "Sword of life stealing"),
        (89, 89, "Sword of wounding"),
        (90, 90, "Tentacle rod"),
        (91, 91, "Vicious weapon"),
        (92, 92, "Wand of binding"),
        (93, 93, "Wand of enemy detection"),
        (94, 94, "Wand of fear"),
        (95, 95, "Wand of fireballs"),
        (96, 96, "Wand of lightning bolts"),
        (97, 97, "Wand o fparalysis"),
        (98, 98, "Wand of the war mage, +2"),
        (99, 99, "Wand of wonder"),
        (100, 100, "Wings of flying")
    ]
    
    private func GetMagicItemG() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsg {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items H
    private let magicitemsh = [
        (1, 10, "Weapon , +3"),
        (11, 12, "Amulet ofthe planes"),
        (13, 14, "Carpet of flying"),
        (15, 16, "Crystal ball (very rare version)"),
        (17, 18, "Ring of regeneration"),
        (19, 20, "Ring of shooting stars"),
        (21, 22, "Ring of telekinesis"),
        (23, 24, "Robe of scintillating colors"),
        (25, 26, "Robe of stars"),
        (27, 28, "Rod of absorption"),
        (29, 30, "Rod of alertness"),
        (31, 32, "Rod ofsecurity"),
        (33, 34, "Rod of the pact keeper, +3"),
        (35, 36, "Scimitar of speed"),
        (37, 38, "Shield, +3"),
        (39, 40, "Staff of fire"),
        (41, 42, "Staff of frost"),
        (43, 44, "Staff of power"),
        (45, 46, "Staff of striking"),
        (47, 48, "Staff of thunder and lightning"),
        (49, 50, "Sword of sharpness"),
        (51, 52, "Wand of polymorph"),
        (53, 54, "Wand of the war mage, +3"),
        (55, 55, "Adamantine armor (half plate)"),
        (56, 56, "Adamantine armor (plate)"),
        (57, 57, "Animated shield"),
        (58, 58, "Belt of fire giant strength"),
        (59, 59, "Belt of frost (or stone) giant strength"),
        (60, 60, "Armor, +1 breastplate"),
        (61, 61, "Armor of resistance (breastplate)"),
        (62, 62, "Candle of invocation"),
        (63, 63, "Armor, +2 chain mail"),
        (64, 64, "Armor, +2 chain shirt"),
        (65, 65, "Cloak of arachnida"),
        (66, 66, "Dancing sword"),
        (67, 67, "Demon armor"),
        (68, 68, "Dragon scale mail"),
        (69, 69, "Dwarven plate"),
        (70, 70, "Dwarven thrower"),
        (71, 71, "Efreeti bottle"),
        (72, 72, "Figurine of wondrous power (obsidian steed)"),
        (73, 73, "Frost brand"),
        (74, 74, "Helm of brilliance"),
        (75, 75, "Horn ofValhalla (bronze)"),
        (76, 76, "Instrument of the bards (Anstruth harp)"),
        (77, 77, "Ioun stone (absorption)"),
        (78, 78, "Ioun stone (agility)"),
        (79, 79, "Ioun stone (fortitude)"),
        (80, 80, "Ioun stone (insight)"),
        (81, 81, "Ioun stone (intellect)"),
        (82, 82, "Ioun stone (leadership)"),
        (83, 83, "Ioun stone (strength)"),
        (84, 84, "Armor, +2 leather"),
        (85, 85, "Manual of bodily health"),
        (86, 86, "Manual of gainful exercise"),
        (87, 87, "Manual of golems"),
        (88, 88, "Manual of quickness of action"),
        (89, 89, "Mirror of life trapping"),
        (90, 90, "Nine lives stealer"),
        (91, 91, "Oath bow"),
        (92, 92, "Armor, +2 scale mail"),
        (93, 93, "Spellguard shield"),
        (94, 94, "Armor, +1 splint"),
        (95, 95, "Armor of resistance (splint)"),
        (96, 96, "Armor, +1 studded leather"),
        (97, 97, "Armor of resistance (studded leather)"),
        (98, 98, "Tome of clear thought"),
        (99, 99, "Tome of leadership and influence"),
        (100, 100, "Tome of understanding")
    ]
    
    private func GetMagicItemH() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsh {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: Magic Items I
    private let magicitemsi = [
        (1, 5, "Defender"),
        (6, 10, "Hammer ofthunderbolts"),
        (11, 15, "Luck blade"),
        (16, 20, "Sword of answering"),
        (21, 23, "Holy avenger"),
        (24, 26, "Ring of djinni summoning"),
        (27, 29, "Ring o f invisibility"),
        (30, 32, "Ring of spell turning"),
        (33, 35, "Rod of lordly might"),
        (36, 38, "Staff of the magi"),
        (39, 41, "Vorpal sword"),
        (42, 43, "Belt of cloud giant strength"),
        (44, 45, "Armor, +2 breastplate"),
        (46, 47, "Armor, +3 chain mail"),
        (48, 49, "Armor, +3 chain shirt"),
        (50, 51, "Cloak of invisibility"),
        (52, 53, "Crystal ball (legendary version)"),
        (54, 55, "Armor, +1 half plate"),
        (56, 57, "Iron flask"),
        (58, 59, "Armor, +3 leather"),
        (60, 61, "Armor, +1 plate"),
        (62, 63, "Robe of the archmagi"),
        (64, 65, "Rod of resurrection"),
        (66, 67, "Armor, +1 scale mail"),
        (68, 69, "Scarab of protection"),
        (70, 71, "Armor, +2 splint"),
        (72, 73, "Armor, +2 studded leather"),
        (74, 75, "Well of many worlds"),
        (76, 76, "Magic armor (roll dl2)"),
        (77, 77, "Apparatus of Kwalish"),
        (78, 78, "Armor of invulnerability"),
        (79, 79, "Belt of storm giant strength"),
        (80, 80, "Cubic gate"),
        (81, 81, "Deck of many things"),
        (82, 82, "Efreeti chain"),
        (83, 83, "Armor of resistance (half plate)"),
        (84, 84, "Horn ofValhalla (iron)"),
        (85, 85, "Instrument ofthe bards (Ollamh harp)"),
        (86, 86, "Ioun stone (greater absorption)"),
        (87, 87, "Ioun stone (mastery)"),
        (88, 88, "Ioun stone (regeneration)"),
        (89, 89, "Plate armor of etherealness"),
        (90, 90, "Plate armor of resistance"),
        (91, 91, "Ring of air elemental command"),
        (92, 92, "Ring of earth elemental command"),
        (93, 93, "Ring of fire elemental command"),
        (94, 94, "Ring of three wishes"),
        (95, 95, "Ring of water elemental command"),
        (96, 96, "Sphere of annihilation"),
        (97, 97, "Talisman of pure good"),
        (98, 98, "Talisman of the sphere"),
        (99, 99, "Talisman of ultimate evil"),
        (100, 100, "Tome of the stilled tongue")
    ]
    
    private func GetMagicItemI() -> LootItem {
        // Get a ramdon magic item from our list.
        // Distribution of magic items is not even.
        let roll = rnd.getInt(min: 1, max: 100)
        for item in magicitemsi {
            if roll >= item.0 && roll <= item.1 {               // If the roll is between the required values
                return LootItem(name: item.2, goldValue: 0)     // Return the selected magic item. Magic items have no intrinsic value.
            }
        }
        return LootItem(name: "NULL MAGIC ITEM", goldValue: 0)  // If we don't find anything return a null. Shouldn't happen.
    }
    
    // MARK: GetTreasure Function
    private func GetTreasure(dice: Int, sides: Int, lootObject: inout [LootItem], action: () -> LootItem) {
        var total = 0;
        for _ in 1...dice {
            total += rnd.getInt(min: 1, max: sides)
        }
        for _ in 1...total {
            lootObject.append(action())
        }
    }
    
    // MARK: GetTreasureCoins Function
    private func GetTreasureCoins(dice: Int, sides: Int, lootObject: inout [LootItem], action: (Int) -> LootItem, multiplier: Int? = 1) {
        var total = 0;
        for _ in 1...dice {
            total += rnd.getInt(min: 1, max: sides)
        }
        lootObject.append(action(total * multiplier!))
    }
    
    // MARK: GetLoot Function
    public func GetLoot(challengeRating: Int, isIndividual: Bool) -> [LootItem] {
        var loot: [LootItem] = []               // Our loot object. Will return after we populate it.
        let d100 = rnd.getInt(min: 1, max: 100) // Make a d100 roll for the table
        
        if isIndividual {                       // Individual treasure
            if challengeRating <= 4 {           // CR 0-4
                if d100 <= 30 {
                    GetTreasureCoins(dice: 5, sides: 6, lootObject: &loot,
                                     action: GetCopperCoins(copper:))                   // 5d6 copper coins
                }
                else if d100 <= 60 {
                    GetTreasureCoins(dice: 4, sides: 6, lootObject: &loot,
                                     action: GetSilverCoins(silver:))                   // 4d6 silver coins
                }
                else if d100 <= 70 {
                    GetTreasureCoins(dice: 3, sides: 6, lootObject: &loot,
                                     action: GetElectrumCoins(electrum:))               // 3d6 electrum coins
                }
                else if d100 <= 95 {
                    GetTreasureCoins(dice: 3, sides: 6, lootObject: &loot,
                                     action: GetGoldCoins(gold:))                       // 3d6 gold coins
                }
                else if d100 <= 100 {
                    GetTreasureCoins(dice: 1, sides: 6, lootObject: &loot,
                                     action: GetPlatinumCoins(plat:))                   // 1d6 platinum coins
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
                GetTreasureCoins(dice: 6, sides: 6, lootObject: &loot,
                                 action: GetCopperCoins(copper:), multiplier: 100)      // 6d6x100 copper coins
                GetTreasureCoins(dice: 3, sides: 6, lootObject: &loot,
                                 action: GetSilverCoins(silver:), multiplier: 100)      // 3d6x100 silver coins
                GetTreasureCoins(dice: 2, sides: 6, lootObject: &loot,
                                 action: GetGoldCoins(gold:), multiplier: 10)           // 2d6x10 gold coins
                
                let dh100 = rnd.getInt(min: 1, max: 100)
                if dh100 <= 6 {
                                                                                        // Sucks for you no loot!
                }
                else if dh100 <= 16 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone10GP)                                // 2d6 10gp gems
                }
                else if dh100 <= 26 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gp art objects
                }
                else if dh100 <= 36 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                }
                else if dh100 <= 44 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone10GP)                                // 2d6 10gp gems
                    GetTreasure(dice: 1, sides: 6, lootObject: &loot,
                                action: GetMagicItemA)                                  // 1d6 magic items from table A
                }
                else if dh100 <= 52 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gp art objects
                    GetTreasure(dice: 1, sides: 6, lootObject: &loot,
                                action: GetMagicItemA)                                  // 1d6 magic items from table A
                }
                else if dh100 <= 60 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                    GetTreasure(dice: 1, sides: 6, lootObject: &loot,
                                action: GetMagicItemA)                                  // 1d6 magic items from table A
                }
                else if dh100 <= 65 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone10GP)                                // 2d6 10GP gems
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemB)                                  // 1d4 magic items from table B
                }
                else if dh100 <= 70 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gp art objects
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemB)                                  // 1d4 magic items from table B
                }
                else if dh100 <= 75 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemB)                                  // 1d4 magic items from table B
                }
                else if dh100 <= 78 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone10GP)                                // 2d6 10gp gems
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemC)                                  // 1d4 magic items from table C
                }
                else if dh100 <= 80 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gp art objects
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemC)                                  // 1d4 magic items from table C
                }
                else if dh100 <= 85 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemC)                                  // 1d4 magic items from table C
                }
                else if dh100 <= 92 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gb art objects
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemF)                                  // 1d4 magic items from table F
                }
                else if dh100 <= 97 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                    GetTreasure(dice: 1, sides: 4, lootObject: &loot,
                                action: GetMagicItemF)                                  // 1d4 magic items from table F
                }
                else if dh100 <= 99 {
                    GetTreasure(dice: 2, sides: 4, lootObject: &loot,
                                action: GetArtObject25GP)                               // 2d4 25gp art objects
                    loot.append(GetMagicItemG())                                        // Roll once for items from table G
                }
                else if dh100 <= 100 {
                    GetTreasure(dice: 2, sides: 6, lootObject: &loot,
                                action: GetGemstone50GP)                                // 2d6 50gp gems
                    loot.append(GetMagicItemG())                                        // Roll once for items from table G
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
        }
        
        return loot
    }
}
