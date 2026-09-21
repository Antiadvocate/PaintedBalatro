--- STEAMODDED HEADER
--- MOD_NAME: Painted
--- MOD_ID: Painted
--- MOD_AUTHOR: [Antiadvocate]
--- MOD_DESCRIPTION: A collection of Feet Mods. Check the mod description on GitHub for more information :)
--- DISPLAY_NAME: Painted
--- BADGE_COLOUR: ffdab9
----------------------------------------------
------------MOD CODE -------------------------

-- Config: DISABLE UNWANTED MODS HERE
local config = {
    worldsapartJoker = true,
    reflectiveSolesJoker = true,
    holditinJoker = true,
    transformerjoker = true,
    plainFeetJoker = true,
    showoffJoker = true,
    riskyJoker = true,
    theMistressJoker = true,
    racerJoker = true,
    toeringJoker = true,
    reminiscenceJoker = true,
    uniqueJokerCollector = true,
    archVoidJoker = true,
    lowestCardMoneyJoker = true,
    forbiddenFeetJoker = true,
    footVarietyJoker = true,
    sacrificialSolesJoker = true,
    bowdownJoker = true,
    footFettersJoker = true,
    fleetFeetJoker = true,
    sweetDreamsJoker = true,
    wildfocus = true,
    cosmicDevourerJoker = true,
    filthyneedsJoker = true,
    poolpartyjoker = true,
    riskysoleJoker = true,
    littleStepsJoker = true,
    desiredFeet = true,
    investorJoker = true,
    taxCollectorJoker = true,
    rankDiversityJoker = true,
    queenretriggerJoker = true,
    farewellFeetJoker = true,
    suitMultiJoker = true,
    psychicJoker = true,
    twoLeftFeetJoker = true,
    sleightoffootjoker = true,
    collectorsFeetJoker = true,
    purpleFeetJoker = true,
    steadyStrideJoker = true,
    solitaireSoleJoker = true,
    preservationJoker = true,
    steelFaceJoker = true,
    queenTwoDifferentSuitsJoker = true,
    suitEnhancementJoker = true,
    barefootStepsJoker = true,
    negativeSoulJoker = true,
    bookendsJoker = true,
    commonground = true,
    wildSolesJoker = true,
    celestialSolesJoker = true,
    firstStepUpJoker = true, -- Increases rank of the first card played each round by 1
    handySolesJoker = true,
    dominantFootJoker = true,
    treadmillJoker = true,
    enchantedStepsJoker = true,
    goldencrown = true,
    ashputtelJoker = true,
    soleProviderJoker = true,
    peddlerJoker = true,
    tiptoeJoker = true,
    partnerJoker = true,
    pristineSolesJoker = true,
    centipedeJoker = true,
    callousSoleJoker = true,
    lunarEclipseJoker = true,
    houseOfQueensJoker = true,
    twoViewsJoker = true, -- Add this line
    highEndHeelsJoker= true,
    trampleJoker = true,
    barefootJoker = true,
    tyrantStepJoker = true,
    tapDancerJoker = true,
    familiarFootsteps = true,
    walkInTheParkJoker = true,
    tenderHardJoker = true,
    frostbittenJoker = true,
    soleFoodJoker = true,
    pedometerJoker = true,
    redHeelsJoker = true,
    giantStrideJoker = true,
    petrifiedSoleJoker = true,
    borrowedHeelsJoker = true,
    asceticSoleJoker = true,
    jestersGaitJoker = true,
    glassSlipperJoker = true,
    sloppysolesjoker = true,
    soleServiceJoker = true,
    facestompjoker = true,
    muddySolesJoker = true,
    sustainPedalJoker = true,
    soleProprietorJoker = true,
    majesticSolesJoker = true,
    matriarchJoker = true,
    repeatedFitJoker = true,
    eclipsedJoker = true,
    prestigiousLoserJoker = true,
    noticingJoker = true,
    sightseeingJoker = true,
    experiencingJoker = true,
    beggingJoker = true,
    mirageSolesJoker = true,
    indifferenceJoker = true,
    queensTributeJoker = true,
    loyalSubjectJoker = true,
    perfectFitJoker = true,
    extraStepJoker = true,
    solarRevolutionJoker = true,
    blacked = true,
    cuckedJoker = true,
    RoseJoker = true,
    AlyonasJoker = true,
    SusiesJoker = true,
    KristinsJoker = true,
    BrianasJoker = true,
    restlessFeetJoker = true,
        --tarots
    luckyduplicate = true,
    duplicateFeet = true,
    lowerRankTarot = true,
    thePedicuristTarot = true,
    soleMatesTarot = true,
    soleAscensionTarot = true,
    solesearcher = true,
    retracedStepsTarot = true,
    expandedArchTarot = true,
    coldFeetTarot = true,
    -- Spectral
    pedicureSpectral = true,
    stompSpectral = true,
    momentumSpectral = true,
    ghostlyGaitSpectral = true,
    soleSurvivorSpectral = true,
    seismicStompSpectral = true,
    highArchSpectral = true,
    acetoneSpectral = true,
    soleRaptureSpectral = true,
    soleContractSpectral = true,
    -- Decks
    
}
----------------------------------------------
------------ CUSTOM EDITIONS -----------------


----------------------------------------------
-- Helper functions
-- Helper functions
local function init_joker(joker, no_sprite)
    no_sprite = no_sprite or false

    local new_joker = SMODS.Joker:new(
        joker.ability_name,
        joker.slug,
        joker.ability,
        { x = 0, y = 0 },
        joker.loc,
        joker.rarity,
        joker.cost,
        joker.unlocked,
        joker.discovered,
        joker.blueprint_compat,
        joker.eternal_compat,
        joker.effect,
        joker.atlas,
        joker.soul_pos
    )
    new_joker:register()

    if not no_sprite then
        -- DEFAULT to 71x95 if you don't specify otherwise
        -- IF you set these to 142/190 in the config, it triggers the "4x" logic below
        local width = joker.px or 71
        local height = joker.py or 95

        local sprite = SMODS.Sprite:new(
            new_joker.slug,
            SMODS.findModByID("Painted").path,
            new_joker.slug .. ".png",
            width,
            height,
            "asset_atli"
        )
        sprite:register()

        -- [4X RESOLUTION HANDLER]
        -- If we detect the width is larger than the vanilla 71px, we assume 
        -- you want High Fidelity scaling.
        if width > 71 then
            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    -- Find the specific atlas for this joker
                    local atlas = G.ASSET_ATLAS[new_joker.slug]
                    if atlas and atlas.image then
                        -- Set filter to Linear (Smooth) instead of Nearest (Pixelated)
                        -- This allows the massive image to scale down without noise
                        atlas.image:setFilter("linear", "linear")
                    end
                    return true
                end
            }))
        end
    end
end



local function init_tarot(tarot, no_sprite)
    no_sprite = no_sprite or false

    local new_tarot = SMODS.Tarot:new(
        tarot.name,
        tarot.slug,
        tarot.config,
        { x = 0, y = 0 },
        tarot.loc,
        tarot.cost,
        tarot.cost_mult,
        tarot.effect,
        tarot.consumeable,
        tarot.discovered,
        tarot.atlas,
        tarot.soul_pos
    )
    new_tarot:register()
    if not no_sprite then
        -- DEFAULT to 71x95 if you don't specify otherwise
        -- IF you set these to 142/190 in the config, it triggers the "4x" logic below
        local width = tarot.px or 71
        local height = tarot.py or 95

        local sprite = SMODS.Sprite:new(
            new_tarot.slug,
            SMODS.findModByID("Painted").path,
            new_tarot.slug .. ".png",
            width,
            height,
            "asset_atli"
        )
        sprite:register()

        -- [4X RESOLUTION HANDLER]
        -- If we detect the width is larger than the vanilla 71px, we assume 
        -- you want High Fidelity scaling.
        if width > 71 then
            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    -- Find the specific atlas for this joker
                    local atlas = G.ASSET_ATLAS[new_tarot.slug]
                    if atlas and atlas.image then
                        -- Set filter to Linear (Smooth) instead of Nearest (Pixelated)
                        -- This allows the massive image to scale down without noise
                        atlas.image:setFilter("linear", "linear")
                    end
                    return true
                end
            }))
        end
    end
   
end

table.insert(G.CHALLENGES, feet_challenge)
    -- Localization
    G.localization.descriptions.Other.card_extra_mult = { text = { "{C:mult}+#1#{} extra Mult" } }
    G.localization.misc.dictionary.k_mmc_charging = "Charging..."
    G.localization.misc.dictionary.k_mmc_bonus = "Bonus!"
    G.localization.misc.dictionary.k_mmc_bonus = "Bonus!"
    G.localization.misc.dictionary.k_mmc_hand_up = "+ Hand Size!"
    G.localization.misc.dictionary.k_mmc_hand_down = "- Hand Size!"
    G.localization.misc.dictionary.k_mmc_tick = "Stroke..."
    G.localization.misc.dictionary.k_mmc_plus_card = "Card!"
    G.localization.misc.dictionary.k_mmc_safe = "Safe!"
    G.localization.misc.dictionary.k_mmc_luck = "+ Luck!"
    G.localization.misc.dictionary.k_mmc_destroy = "Destroy!"
    G.localization.misc.dictionary.k_mmc_destroyed = "Destroyed!"
    G.localization.misc.dictionary.k_planet_created = "Planet +1!"
    G.localization.misc.dictionary.k_card_change = "Changed!"
    G.localization.misc.challenge_names['c_feet_devotion_1'] = "Feet Devotion"
    G.localization.misc.dictionary.k_fast_forward_off = "Off"
G.localization.misc.dictionary.k_fast_forward_on = "On"
G.localization.misc.dictionary.k_fast_forward_unsafe = "Unsafe"
G.localization.misc.dictionary.k_status_text_none = "None"
-- Add others as needed based on the speed_options.lua file


    init_localization()
local original_get_effect = Card.get_effect
Card.get_effect = function(self, context)
    if self.ability and self.ability.effect == "Lucky Card" then
        print("Lucky card effect called, trigger state:", self.lucky_trigger)
    end
    return original_get_effect(self, context)
end

local function init_spectral(spectral, no_sprite)
    no_sprite = no_sprite or false

    local new_spectral = SMODS.Spectral:new(
        spectral.name,
        spectral.slug,
        spectral.config,
        { x = 0, y = 0 },
        spectral.loc,
        spectral.cost,
        spectral.consumeable,
        spectral.discovered,
        spectral.atlas
    )
    new_spectral:register()
    if not no_sprite then
        -- DEFAULT to 71x95 if you don't specify otherwise
        -- IF you set these to 142/190 in the config, it triggers the "4x" logic below
        local width = spectral.px or 71
        local height = spectral.py or 95

        local sprite = SMODS.Sprite:new(
            new_spectral.slug,
            SMODS.findModByID("Painted").path,
            new_spectral.slug .. ".png",
            width,
            height,
            "asset_atli"
        )
        sprite:register()

        -- [4X RESOLUTION HANDLER]
        -- If we detect the width is larger than the vanilla 71px, we assume 
        -- you want High Fidelity scaling.
        if width > 71 then
            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    -- Find the specific atlas for this joker
                    local atlas = G.ASSET_ATLAS[new_spectral.slug]
                    if atlas and atlas.image then
                        -- Set filter to Linear (Smooth) instead of Nearest (Pixelated)
                        -- This allows the massive image to scale down without noise
                        atlas.image:setFilter("linear", "linear")
                    end
                    return true
                end
            }))
        end
    end
    
end


local function create_tarot(joker, seed)
    -- Check consumeable space
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        -- Add card
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = "before",
            delay = 0.0,
            func = (function()
                local card = create_card("Tarot", G.consumeables, nil, nil, nil, nil, nil, seed)
                card:add_to_deck()
                G.consumeables:emplace(card)
                G.GAME.consumeable_buffer = 0
                return true
            end)
        }))
        -- Show message
        card_eval_status_text(joker, "extra", nil, nil, nil, {
            message = localize("k_plus_tarot"),
            colour = G.C.PURPLE
        })
    else
        card_eval_status_text(joker, "extra", nil, nil, nil, {
            message = localize("k_no_space_ex")
        })
    end
end

local function create_planet(joker, seed, edition, other_joker)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit or (edition and edition["negative"]) then
        local card_type = "Planet"
        if not (edition and edition["negative"]) then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        end
        G.E_MANAGER:add_event(Event({
            trigger = "before",
            delay = 0.0,
            func = (function()
                if G.GAME.last_hand_played then
                    local _planet = 0
                    for _, v in pairs(G.P_CENTER_POOLS.Planet) do
                        if v.config.hand_type == G.GAME.last_hand_played then
                            _planet = v.key
                        end
                    end

                    local card = create_card(card_type, G.consumeables, nil, nil, nil, nil, _planet, seed)
                    if edition then
                        card:set_edition(edition, true)
                    end
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    if not (edition and edition["negative"]) then
                        G.GAME.consumeable_buffer = 0
                    end

                    if other_joker then
                        other_joker:juice_up(0.5, 0.5)
                    end
                end
                return true
            end)
        }))

        -- Show message
        card_eval_status_text(joker, "extra", nil, nil, nil, {
            message = localize("k_plus_planet"),
            colour = G.C.SECONDARY_SET.Planet
        })
    else
        card_eval_status_text(joker, "extra", nil, nil, nil, {
            message = localize("k_no_space_ex")
        })
    end
end

local function is_even(card)
    local id = card:get_id()
    return id <= 10 and id % 2 == 0
end

local function is_odd(card)
    local id = card:get_id()
    return (id % 2 ~= 0 and id < 10) or id == 14
end

local function is_fibo(card)
    local id = card:get_id()
    return id == 2 or id == 3 or id == 5 or id == 8 or id == 14
end

local function is_prime(card)
    local id = card:get_id()
    return id == 2 or id == 3 or id == 5 or id == 7 or id == 14
end

local function is_face(card)
    local id = card:get_id()
    return id == 11 or id == 12 or id == 13
end

local function remove_prefix(name, prefix)
    local start_pos, end_pos = string.find(name, prefix)
    if start_pos == 1 then
        return string.sub(name, end_pos + 1)
    else
        return name
    end
end

local letters = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
    "t", "u", "v", "w", "x", "y", "z" }

local function count_letters(str, letter)
    local count = 0
    for _ in str:gmatch(letter) do
        count = count + 1
    end
    return count
end

local enhancements = {
    G.P_CENTERS.m_bonus,
    G.P_CENTERS.m_mult,
    G.P_CENTERS.m_wild,
    G.P_CENTERS.m_glass,
    G.P_CENTERS.m_steel,
    G.P_CENTERS.m_stone,
    G.P_CENTERS.m_gold,
    G.P_CENTERS.m_lucky
}

local seals = {
    "Gold",
    "Red",
    "Blue",
    "Purple"
}

local function increase_attributes(k, v, place, multiplier)

    local attr = attributes[k]

    if not attr or type(v) == "string" then
        return
    end

    -- Handle extra seperately
    if type(v) == "table" then
        for k2, v2 in pairs(place.extra) do
            increase_attributes(k2, v2, place.extra, multiplier)
        end
    elseif v > attr.min then
        if place[attr.prev_key] == nil then
            place[attr.prev_key] = multiplier
        end
        if place[attr.key] == nil then
            -- Save base value
            place[attr.key] = v
        else
            if not (v / multiplier == place[attr.key] and place[attr.prev_key] == multiplier) then
                if not (v / multiplier == place[attr.key] or v / place[attr.prev_key] == place[attr.key]) then
                    if v / multiplier ~= place[attr.key] and place[attr.prev_key] == multiplier then
                        -- Update base based on current multiplier
                        local increase = (v / multiplier - place[attr.key]) * multiplier
                        place[attr.key] = place[attr.key] + increase
                    else
                        -- Update base based on previous multiplier
                        local increase = (v / place[attr.prev_key] - place[attr.key]) * place[attr.prev_key]
                        place[attr.key] = place[attr.key] + increase
                    end
                end
            end
        end
        -- Multiply attribute
        place[k] = place[attr.key] * multiplier
        place[attr.prev_key] = multiplier
    end
end


function SMODS.INIT.Painted()
  local fancy_mod = SMODS.findModByID("Painted")


----------------------------------------------
-- HELPER: init_voucher (Updated for 2x Res)
----------------------------------------------
local function init_voucher(voucher, no_sprite)
    no_sprite = no_sprite or false

    -- 1. Register the Atlas first for high-res support
    if not no_sprite then
        SMODS.Atlas({
            key = voucher.slug,
            path = voucher.slug .. ".png",
            px = voucher.px or 71, -- Keep logical size 71x95 so it fits the screen
            py = voucher.py or 95  -- Your actual file in assets/2x will be 142x190
        })
    end

    -- 2. Create and register the Voucher
    local new_voucher = SMODS.Voucher:new(
        voucher.name,
        voucher.slug,
        voucher.config,
        { x = 0, y = 0 },
        voucher.loc,
        voucher.cost,
        voucher.discovered,
        voucher.unlocked,
        voucher.requires
    )
    
    -- Link the voucher to the high-res atlas we just created
    if not no_sprite then
        new_voucher.atlas = voucher.slug
    end
    
    new_voucher:register()
end

----------------------------------------------
-- VOUCHER DEFINITIONS & EFFECTS
----------------------------------------------

-- 1. Base Voucher: Blister Pack
local blister_pack = {
    name = "Blister Pack",
    slug = "v_blister_pack",
    config = { extra = 1 },
    loc = {
        name = "Blister Pack",
        text = {
            "{C:attention}+#1#{} card in all",
            "{C:attention}Booster Packs{}"
        }
    },
    cost = 10,
    discovered = true,
    unlocked = true,
    requires = nil,
    px = 142, py = 190 -- Logical size. Place your 142x190 file in assets/2x/v_blister_pack.png
}

init_voucher(blister_pack)

-- Dynamic text variable binding for Blister Pack
-- Dynamic text variable binding for Blister Pack
function SMODS.Vouchers.v_blister_pack.loc_def(card)
    -- Safely check for card.ability first, fallback to card.config if it's just a center
    local extra = card.ability and card.ability.extra or card.config.extra
    return { extra }
end


-- Hook: Card:open() to add the extra Booster Pack option
local orig_card_open = Card.open
function Card:open()
    if self.ability.set == "Booster" and G.GAME.used_vouchers.v_blister_pack then
        if not self.ability.blister_pack_applied then
            self.ability.extra = self.ability.extra + (G.P_CENTERS.v_blister_pack.config.extra or 1)
            self.ability.blister_pack_applied = true
        end
    end
    return orig_card_open(self)
end


-- 2. Upgraded Voucher: Vacuum Seal
-- Upgraded Voucher: Vacuum Seal
local vacuum_seal = {
    name = "Vacuum Seal",
    slug = "v_vacuum_seal",
    config = { extra = 15 }, -- Represents 15% base chance
    loc = {
        name = "Vacuum Seal",
        text = {
            "{C:dark_edition}Negative{} consumables may",
            "appear in the {C:attention}shop{}"        }
    },
    cost = 10,
    discovered = true,
    unlocked = true,
    requires = {'v_blister_pack'},
    px = 142, py = 190 -- IMPORTANT: Keep logical size at 71x95 so the UI fits!
}

init_voucher(vacuum_seal)

-- Dynamic text variable binding for Vacuum Seal
function SMODS.Vouchers.v_vacuum_seal.loc_def(card)
    local extra = card.ability and card.ability.extra or card.config.extra
    -- Multiply by normal probabilities so "Oops! All 6s" correctly doubles the UI text to 30%
    return { extra * (G.GAME and G.GAME.probabilities.normal or 1) }
end

-- Hook: create_card() to apply Negative edition onto generated consumables in the shop
local orig_create_card = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    local card = orig_create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    
    if G.GAME and G.GAME.used_vouchers.v_vacuum_seal then
        -- G.shop_jokers is the internal area where both Jokers AND Shop Consumables are placed
        -- Checking this ensures we don't accidentally target a Tarot card generated by The Emperor *while* you are in the shop
        if area == G.shop_jokers then
            local is_consumable = (_type == "Tarot" or _type == "Planet" or _type == "Spectral" or (card.ability and card.ability.consumeable))
            
            if is_consumable then
                local base_chance = (G.P_CENTERS.v_vacuum_seal.config.extra or 15) / 100
                
                -- Roll the dice, respecting Oops! All 6s
                if pseudorandom('vacuum_seal') < (base_chance * G.GAME.probabilities.normal) then
                    card:set_edition({negative = true}, true, true)
                end
            end
        end
    end
    
    return card
end


  if config.soleRaptureSpectral then
    local sole_rapture = {
        loc = {
            name = "The Pay Off",
            text = {
                "{C:red}Destroys{} all {C:attention}Consumables{},",
                "and all {C:attention}Jokers{} except",
                "for {C:attention}1{} random Joker.",
                "Creates a {C:legendary}Legendary{} Joker",
                "{C:inactive}(Must have room){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sole Rapture",
        slug = "c_sole_rapture",
        config = { extra = {} },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(sole_rapture)

    function SMODS.Spectrals.c_sole_rapture.loc_def(card)
        return {}
    end

    function SMODS.Spectrals.c_sole_rapture.can_use(card)
        -- Can use if you have at least 1 Joker OR 1 other Consumable to sacrifice
        if #G.jokers.cards > 0 or #G.consumeables.cards > 1 then
             return true
        end
        return false
    end

    function SMODS.Spectrals.c_sole_rapture.use(card, area, copier)
        -- 1. Juice and Sound
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.8, 0.5)
                return true
            end
        }))

        -- 2. Figure out which Joker to save
        local saved_joker = nil
        local destructible_jokers = {}
        
        -- Gather all Jokers that aren't Eternal (Eternal jokers can't be destroyed anyway)
        for i = 1, #G.jokers.cards do
            if not G.jokers.cards[i].ability.eternal then
                table.insert(destructible_jokers, G.jokers.cards[i])
            end
        end
        
        -- Randomly pick one to spare using the game's seeded RNG
        if #destructible_jokers > 0 then
            saved_joker = pseudorandom_element(destructible_jokers, pseudoseed('sole_rapture_save'))
        end

        -- 3. Destroy Jokers (Dissolve loop)
        for i = #G.jokers.cards, 1, -1 do
            local joker = G.jokers.cards[i]
            -- Only destroy if it's not the saved one, and not eternal
            if not joker.ability.eternal and joker ~= saved_joker then 
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        joker:start_dissolve()
                        return true
                    end
                }))
            end
        end

        -- 4. Destroy Consumables (Dissolve loop)
        for i = #G.consumeables.cards, 1, -1 do
            local cons = G.consumeables.cards[i]
            if cons ~= card and cons ~= copier then -- Don't double destroy self
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        cons:start_dissolve()
                        return true
                    end
                }))
            end
        end

        -- 5. Create Legendary
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.5,
            func = function()
                -- Creates a Legendary Joker
                local new_card = create_card('Joker', G.jokers, true, 4, nil, nil, nil, 'sole_rapture_create')
                new_card:add_to_deck()
                G.jokers:emplace(new_card)
                new_card:start_materialize()
                
                -- Visual Feedback
                new_card:juice_up(1, 1)
                return true
            end
        }))
    end
end
  
-- Pedicure (Spectral)
-- Pedicure (Spectral)
if config.pedicureSpectral then
    -- Create Spectral Card
    local pedicure_run = {
        loc = {
            name = "Pedicure",
            text = {
                "Destroy {C:attention}1{} random",
                "card in your hand,",
                "add {C:attention}2{} random {C:dark_edition}Editioned", -- Updated to 2
                "cards to your hand", -- Updated to plural
            }
          },
          px = 142, 
          py = 190,
          ability_name = "Pedicure",
          slug = "c_pedicure",

      
      config = {
        extra = 2,          -- CHANGED: number of cards to create is now 2
        remove_card = true  -- this spectral destroys a hand card
      },
      cost = 6,
      consumeable = true,
      discovered = true,
    }
  
    init_spectral(pedicure_run)
  
    -- Optional (kept for parity with other entries)
    function SMODS.Spectrals.c_pedicure.loc_def(card)
      return {}
    end
  
    -- When this Spectral can be used
    function SMODS.Spectrals.c_pedicure.can_use(card)
      -- Keep it simple & safe: allow during normal “use consumeable” flow if hand has something to destroy
      if #G.hand.cards > 0 then
        return true
      end
      return false
    end
  
    -- Spectral effect
    function SMODS.Spectrals.c_pedicure.use(card, area, copier)
      local destroyed = nil
  
      -- 1) Destroy 1 random card in hand (if any)
      if #G.hand.cards > 0 then
        
        destroyed = pseudorandom_element(G.hand.cards, pseudoseed('pedicure_destroy'))

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            card:juice_up(0.3, 0.5)
            return true end }))

        if destroyed then
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.0,
            func = function()
              if destroyed.ability and destroyed.ability.name == 'Glass Card' then
                destroyed:shatter()
              else
                destroyed:start_dissolve()
              end
              for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed})
            end
            G.hand:align_cards()
              return true
            end
          }))
        end
      end
  
      -- 2) Create new random playing cards with a random Edition
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.25,
        func = function()
          -- Loop based on the extra value (which is now 2)
          for i = 1, (card.ability and card.ability.extra or 2) do
            local _rank = pseudorandom_element({'J','Q','K','A','2','3','4','5','6','7','8','9','T'}, pseudoseed('pedicure_create_r'))
            local _suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('pedicure_create_s'))
  
            -- create a raw playing card for that rank/suit into hand
            local newc = create_playing_card(
              {front = G.P_CARDS[_suit..'_'.._rank]},
              G.hand,
              nil,          -- slot
              i ~= 1,       -- stagger animation
              nil           -- no special set
            )
  
            if newc then
              -- roll a random edition and apply it
              local edition = poll_edition('wheel_of_fortune', nil, true, true)
              if edition then
                newc:set_edition(edition, true, true)
              end
              
              -- Trigger Joker effects (like Hologram) for EACH card created
              playing_card_joker_effects(newc)
            end
          end
          
          play_sound('holo1', 1.1)
          return true
        end
      }))
  
      -- visually “use” the spectral
      card:juice_up(0.3, 0.5)
      return true
    end
end

  if config.ghostlyGaitSpectral then
    -- Create Spectral Card
    local ghostly_gait = {
        loc = {
            name = "Ghostly Gait",
            text = {
                "{C:red}Destroys{} 2 random cards,",
                "add {C:dark_edition}Polychrome{} to",
                "{C:attention}2{} random cards in hand"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Ghostly Gait",
        slug = "c_feet_ghostly_gait",
        
        config = {
            extra = {
                destroy_count = 2,
                mod_count = 2
            }
        },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(ghostly_gait)

    -- Localization definition
    function SMODS.Spectrals.c_feet_ghostly_gait.loc_def(card)
        return {}
    end

    -- Can be used if we have at least (destroy_count + 1) cards, 
    -- ensuring we have enough to destroy and at least one survivor to buff.
    function SMODS.Spectrals.c_feet_ghostly_gait.can_use(card)
        if #G.hand.cards >= (card.ability.extra.destroy_count + 1) then
            return true
        end
        return false
    end

    -- Spectral effect
    function SMODS.Spectrals.c_feet_ghostly_gait.use(card, area, copier)
        local destroy_count = card.ability.extra.destroy_count
        local mod_count = card.ability.extra.mod_count
        local used_tarot = copier or card
        
        -- 1. Identify cards to destroy and cards to buff
        local available_cards = {}
        for k, v in ipairs(G.hand.cards) do
            table.insert(available_cards, v)
        end

        -- Shuffle to randomize selection
        pseudoshuffle(available_cards, pseudoseed('ghostly_gait'))

        local cards_to_destroy = {}
        local cards_to_buff = {}

        -- Select cards to destroy
        for i = 1, destroy_count do
            if #available_cards > 0 then
                table.insert(cards_to_destroy, table.remove(available_cards, 1))
            end
        end

        -- Select cards to buff from the survivors
        for i = 1, mod_count do
            if #available_cards > 0 then
                table.insert(cards_to_buff, table.remove(available_cards, 1))
            end
        end

        -- 2. Juice the spectral card
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        -- 3. Destroy phase
        if #cards_to_destroy > 0 then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    for _, v in ipairs(cards_to_destroy) do
                        if v.ability and v.ability.name == 'Glass Card' then 
                            v:shatter()
                        else
                            v:start_dissolve()
                        end
                    end
                    
                    -- Notify Jokers of destruction
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = cards_to_destroy})
                    end
                    return true
                end
            }))
        end

        -- 4. Buff phase (Add Polychrome)
        if #cards_to_buff > 0 then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.5, -- Wait for destruction animation
                func = function()
                    for _, v in ipairs(cards_to_buff) do
                        -- Apply Polychrome
                        v:set_edition({polychrome = true}, true)
                        v:juice_up(0.3, 0.5)
                    end
                    play_sound('holo1', 1.2, 0.7)
                    return true
                end
            }))
        end

        return true
    end
end

-- Add this to your config table at the top of the file
-- highArchSpectral = true, 
if config.coldFeetTarot then
    local cold_feet = {
        loc = {
            name = "Cold Feet",
            text = {
                "Go back {C:attention}#1#{} Ante,",
                "{C:red}destroys{} your most {C:attention}expensive{} Joker",
                "{C:inactive}(Must be at least Ante 1){}"
            }
        },
        px = 142, 
        py = 190, 
        ability_name = "Cold Feet",
        slug = "c_cold_feet",
        config = { extra = 1 }, 
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_tarot(cold_feet)

    function SMODS.Tarots.c_cold_feet.loc_def(card)
        -- Use ability.extra if available, otherwise fallback to config (safe for tooltips)
        local val = (card.ability and card.ability.extra) or card.config.extra
        return { val }
    end

    function SMODS.Tarots.c_cold_feet.can_use(card)
        -- Ensure you are past Ante 1 and have at least 1 destructible (non-eternal) Joker
        if G.jokers and #G.jokers.cards > 0 and G.GAME.round_resets.ante > 1 then
            for i = 1, #G.jokers.cards do
                if not G.jokers.cards[i].ability.eternal then
                    return true
                end
            end
        end
        return false
    end

    function SMODS.Tarots.c_cold_feet.use(card, area, copier)
        local target_candidates = {}
        local max_cost = -math.huge
        
        -- Find the highest sell cost among non-eternal Jokers
        for i = 1, #G.jokers.cards do
            local j = G.jokers.cards[i]
            if not j.ability.eternal then
                if j.sell_cost > max_cost then
                    max_cost = j.sell_cost
                    target_candidates = {j}
                elseif j.sell_cost == max_cost then
                    table.insert(target_candidates, j)
                end
            end
        end

        -- Randomly select from the ties (or just take the 1 if there's no tie)
        local target = nil
        if #target_candidates > 0 then
            target = pseudorandom_element(target_candidates, pseudoseed('cold_feet_destroy'))
        end
        
        -- 'ability' holds the live data for the card instance.
        local ante_change = -(card.ability and card.ability.extra or card.config.extra)
        
        if target then
            -- Step 1: Destroy the Joker
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.3, 0.5)
                    target:start_dissolve()
                    return true
                end
            }))
            
            -- Step 2: Rewind Time
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.7,
                func = function()
                    -- Use the local variable 'ante_change' captured at the start
                    ease_ante(ante_change)
                    
                    play_sound('timpani')
                    attention_text({
                        text = "Rewind!",
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.PURPLE,
                        align = 'cm',
                        offset = {x = 0, y = -0.2},
                        silent = true
                    })
                    return true
                end
            }))
        else
            -- Failsafe in case something weird happens mid-resolution
            card_eval_status_text(card, "extra", nil, nil, nil, {
                message = localize("k_nope_ex"),
                colour = G.C.RED
            })
        end
    end
end

if config.highArchSpectral then 
    local high_arch = {
        loc = {
            name = "High Arch",
            text = {
                "Upgrade {C:attention}most played",
                "poker hand by",
                "{C:attention}5{} levels",
                "{C:inactive}(Must have no ties)"
            }
        },
        px = 142, py = 190, 
        ability_name = "High Arch",
        slug = "c_high_arch",
        config = { extra = 5 },
        cost = 4,
        consumeable = true,
        discovered = true,
        rarity = 3
    }
    
    init_spectral(high_arch)

    -- Updated Condition Logic
    function SMODS.Spectrals.c_high_arch.can_use(card)
        local max_played = 0
        local count_at_max = 0

        -- Iterate all hands to find the highest play count and how many share it
        for k, v in ipairs(G.handlist) do
            local played = G.GAME.hands[v].played
            
            if played > max_played then
                max_played = played
                count_at_max = 1 -- New highest found, reset counter
            elseif played == max_played and played > 0 then
                count_at_max = count_at_max + 1 -- Tie found
            end
        end

        -- Restriction 1: Must have played at least one hand (max > 0)
        if max_played == 0 then return false end

        -- Restriction 2: Must not have a tie (count must be exactly 1)
        if count_at_max > 1 then return false end

        return true
    end

    function SMODS.Spectrals.c_high_arch.use(card, area, copier)
        local _hand, _tally = nil, -1
        
        -- We can safely just find the max here because can_use guarantees a unique max exists
        for k, v in ipairs(G.handlist) do
            if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
                _hand = v
                _tally = G.GAME.hands[v].played
            end
        end

        if _hand then
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(_hand, 'poker_hands'), chips = '...', mult = '...', level=''})
            
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                G.TAROT_INTERRUPT_PULSE = true
                return true end }))
            
            level_up_hand(card, _hand, nil, card.ability.extra)
            
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
        end

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            G.TAROT_INTERRUPT_PULSE = nil
            return true end }))
    end
end

if config.retracedStepsTarot then
    local retraced_steps = {
        loc = {
            name = "Retraced Steps",
            text = {
                "Spawns a copy of the",
                "last {C:attention}Tag{} used",
                "{s:0.8,C:inactive}(If none, spawns a {C:attention}Double Tag{C:inactive})",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Retraced Steps",
        slug = "c_feet_retraced_steps",
        config = { extra = {} },
        cost = 3,
        consumeable = true,
        discovered = true,
    }

    init_tarot(retraced_steps)

    -- [REQUIRED] Allows the card to be used without selecting playing cards
    function SMODS.Tarots.c_feet_retraced_steps.can_use(card)
        return true
    end

    -- Dynamic Text: Shows "Double Tag" if history is empty, otherwise shows the name of the last tag
    function SMODS.Tarots.c_feet_retraced_steps.loc_def(card)
        local tag_key = G.GAME.feet_last_tag_used or 'tag_double'
        local tag_name = "Double Tag"
        
        -- Retrieve the localized name of the tag
        if G.P_TAGS[tag_key] then
            tag_name = localize{type = 'name_text', key = tag_key, set = 'Tag'}
        end
        
        return { tag_name }
    end

    -- Use Function: Spawns the tag
    function SMODS.Tarots.c_feet_retraced_steps.use(card, area, copier)
        -- Default to 'tag_double' if nil
        local tag_to_spawn = G.GAME.feet_last_tag_used or 'tag_double'
        
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                add_tag(Tag(tag_to_spawn))
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
    end

    -- Hook: Tracks the last tag used
    local tag_apply_to_run_ref = Tag.apply_to_run
    function Tag:apply_to_run(context)
        local ret = tag_apply_to_run_ref(self, context)
        
        -- Record usage if triggered, excluding Double Tags to prevent infinite loops
        if self.triggered and self.key ~= 'tag_double' then 
            G.GAME.feet_last_tag_used = self.key
        end
        
        return ret
    end
end

if config.indifferenceJoker then
    
    local frames_indiff_count = 2031 
    
    -- Helper to register sprite sheets
    local function register_indiff_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_indifference_sheet_" .. sheet_idx,
                path = "animations/j_indifference_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    register_indiff_sheets(frames_indiff_count)
    
    local indifference = SMODS.Joker:new(
        "Indifference", 
        "j_indifference", 
        { 
            extra = { 
                current_frame = 1,
                max_frames = frames_indiff_count,
                frame_timer = 0,
                frame_delay = 0.016
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Indifference",
            text = {
                "When {C:attention}Boss Blind{} is selected,",
                "your {C:attention}most played{} hand {C:red}steals{} 1 level",
                "from {C:attention}all{} least played hands.",
                "{s:0.8}Most played chosen at random if tied."
            }
        },
        3, -- Legendary Rarity
        8, -- Cost
        true, 
        true, 
        true, 
        true 
    )
    
    indifference.atlas = "j_indifference_sheet_1"
    indifference:register()
    
    function SMODS.Jokers.j_indifference.loc_def(card)
        return {} 
    end

    SMODS.Jokers.j_indifference.tooltip = function(self, info_queue)
        if not G.localization.descriptions.Other.indiff_most then
            G.localization.descriptions.Other.indiff_most = {
                name = "The King",
                text = { "Target: {C:attention}#1#{} (lvl.{C:attention}#2#{})" }
            }
            G.localization.descriptions.Other.indiff_victims = {
                name = "The Victims",
                text = { "{C:attention}#1#{} hands will lose {C:red}1{} level each." }
            }
            
            if loc_parse_string then
                G.localization.descriptions.Other.indiff_most.text_parsed = { loc_parse_string("Target: {C:attention}#1#{} (lvl.{C:attention}#2#{})") }
                G.localization.descriptions.Other.indiff_victims.text_parsed = { loc_parse_string("{C:attention}#1#{} hands will lose {C:red}1{} level each.") }
            end
        end

        local max_played, min_played = -1, 9999999
        local most_played_hands, least_played_hands = {}, {}
        
        if G.GAME and G.GAME.hands then
            for _, v in ipairs(G.handlist) do
                if G.GAME.hands[v].visible then
                    if G.GAME.hands[v].played > max_played then
                        max_played, most_played_hands = G.GAME.hands[v].played, {v}
                    elseif G.GAME.hands[v].played == max_played then
                        table.insert(most_played_hands, v)
                    end

                    if G.GAME.hands[v].played < min_played then
                        min_played, least_played_hands = G.GAME.hands[v].played, {v}
                    elseif G.GAME.hands[v].played == min_played then
                        table.insert(least_played_hands, v)
                    end
                end
            end
        end
        
        local round_seed = G.GAME and G.GAME.round or 0
        local target_hand = #most_played_hands > 0 and pseudorandom_element(most_played_hands, pseudoseed('indiff_t' .. round_seed)) or "High Card"
        local most_lvl = G.GAME and G.GAME.hands and G.GAME.hands[target_hand] and G.GAME.hands[target_hand].level or 0

        info_queue[#info_queue+1] = {
            key = 'indiff_most', set = 'Other', vars = {localize(target_hand, 'poker_hands'), most_lvl}
        }
        info_queue[#info_queue+1] = {
            key = 'indiff_victims', set = 'Other', vars = {#least_played_hands}
        }
    end
    
    SMODS.Jokers.j_indifference.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced and G.GAME.blind.boss then
            local max_played, min_played = -1, 9999999
            local most_played_hands, least_played_hands = {}, {}

            for _, v in ipairs(G.handlist) do
                if G.GAME.hands[v].visible then
                    if G.GAME.hands[v].played > max_played then
                        max_played, most_played_hands = G.GAME.hands[v].played, {v}
                    elseif G.GAME.hands[v].played == max_played then
                        table.insert(most_played_hands, v)
                    end

                    if G.GAME.hands[v].played < min_played then
                        min_played, least_played_hands = G.GAME.hands[v].played, {v}
                    elseif G.GAME.hands[v].played == min_played then
                        table.insert(least_played_hands, v)
                    end
                end
            end

            if #most_played_hands > 0 and #least_played_hands > 0 then
                local round_seed = G.GAME and G.GAME.round or 0
                local target_hand = pseudorandom_element(most_played_hands, pseudoseed('indiff_t' .. round_seed))
                
                local stolen_levels = 0
                for _, source_hand in ipairs(least_played_hands) do
                    if G.GAME.hands[source_hand].level > 1 then
                        level_up_hand(self, source_hand, nil, -1)
                        stolen_levels = stolen_levels + 1
                    end
                end

                if stolen_levels > 0 then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(target_hand, 'poker_hands'), chips = '...', mult = '...', level=''})
                    
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after', 
                        delay = 0.2, 
                        func = function()
                            play_sound('tarot1')
                            self:juice_up(0.8, 0.5)
                            card_eval_status_text(self, "extra", nil, nil, nil, {
                                message = "+" .. stolen_levels .. " Stolen!",
                                colour = G.C.RED,
                                delay = 0.5
                            })
                            G.TAROT_INTERRUPT_PULSE = true
                            return true 
                        end 
                    }))
                    
                    level_up_hand(self, target_hand, nil, stolen_levels)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                    
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after', 
                        delay = 0.2, 
                        func = function()
                            G.TAROT_INTERRUPT_PULSE = nil
                            return true 
                        end 
                    }))
                end
            end
        end
    end
    
    -- Animation Update Logic (Card:update override)
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        if self.ability.name == "Indifference" and self.added_to_deck then
            local current_real_time = love.timer.getTime()
            if not self.ability.extra.last_real_time then self.ability.extra.last_real_time = current_real_time end
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                if self.ability.extra.current_frame > self.ability.extra.max_frames then self.ability.extra.current_frame = 1 end
                
                local frame_num = self.ability.extra.current_frame
                local frames_per_sheet = 50
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                local sheet_atlas_key = "j_indifference_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end


--------UNCOMMON--------------

if config.loyalSubjectJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_loyal_subject",
        path = "j_loyal_subject.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
    }):register()

    -- 2. CREATE JOKER
    local loyal_subject = SMODS.Joker:new(
        "Loyal Subject",
        "j_loyal_subject",
        {
            extra = {
                dollars = 1,
                x_mult_gain = 0.1,
                current_x_mult = 1
            }
        },
        { x = 0, y = 0 },
        {
            name = "Loyal Subject",
            text = {
                "Scored {C:attention}Non-Queen{} face cards",
                "give {C:money}$#1#{} and remove {X:mult,C:white} X#2# {} Mult.",
                "Scored {C:attention}Queens{} give {X:mult,C:white} X#2# {} Mult.",
                "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)"
            }
        },
        2,    -- Uncommon Rarity
        6,    -- Cost
        true, -- Unlocked
        true, -- Discovered
        true, -- Blueprint Compat
        true, -- Eternal Compat
        nil,  -- Effect
        "j_loyal_subject"
    )

    loyal_subject:register()

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_loyal_subject.loc_def(card)
        return { card.ability.extra.dollars, card.ability.extra.x_mult_gain, card.ability.extra.current_x_mult }
    end

    -- 4. SCORING & TRIGGERS
    SMODS.Jokers.j_loyal_subject.calculate = function(self, context)
        -- Trigger when a card scores individually in the played hand
        if context.individual and context.cardarea == G.play then
            local card = context.other_card
            local is_face = card:is_face()
            local is_queen = card:get_id() == 12

            -- A: Non-Queen Face Card (King, Jack, or Pareidolia targets)
            if is_face and not is_queen then
                -- Reduce Mult (Floor at 1.0)
                if not context.blueprint then
                    self.ability.extra.current_x_mult = math.max(1, self.ability.extra.current_x_mult - self.ability.extra.x_mult_gain)
                end

                -- Give Money Logic
                G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + self.ability.extra.dollars
                G.E_MANAGER:add_event(Event({
                    func = (function() 
                        G.GAME.dollar_buffer = 0; 
                        return true 
                    end)
                }))
                
                return {
                    dollars = self.ability.extra.dollars,
                    message = "-X" .. self.ability.extra.x_mult_gain .. " Mult",
                    colour = G.C.RED,
                    card = self
                }

            -- B: Queen Scored
            elseif is_queen and not context.blueprint then
                -- Increase Mult
                self.ability.extra.current_x_mult = self.ability.extra.current_x_mult + self.ability.extra.x_mult_gain

                return {
                    extra = {focus = self, message = localize('k_upgrade_ex')},
                    card = self,
                    colour = G.C.MULT
                }
            end
        end

        -- C: Apply the final accumulated XMult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.current_x_mult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.current_x_mult}},
                    Xmult_mod = self.ability.extra.current_x_mult,
                    card = self
                }
            end
        end
    end
end


if config.extraStepJoker then
    
    local frames_step_count = 355 -- Adjust this to the actual number of frames for the animation
    
    -- Helper to register sprite sheets
    local function register_step_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            
            SMODS.Atlas({
                key = "j_extra_step_sheet_" .. sheet_idx,
                path = "animations/extrastepJoker/j_extra_step_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    -- Register sheets
    register_step_sheets(frames_step_count)
    
    local extra_step = SMODS.Joker:new(
        "Extra Step", 
        "j_extra_step", 
        { 
            extra = { 
                discard_gain = 1,
                current_frame = 1,
                max_frames = frames_step_count,
                frame_timer = 0,
                frame_delay = 0.016 -- ~60 FPS
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Extra Step",
            text = {
                "Gain {C:red}+#1#{} Discard",
                "after a {C:attention}hand{} is played"
            }
        },
        2, -- Uncommon Rarity
        5, -- Cost
        true, -- Unlocked
        true, -- Discovered
        true, -- Blueprint Compat
        true  -- Eternal Compat
    )
    
    extra_step.atlas = "j_extra_step_sheet_1"
    extra_step:register()
    
    function SMODS.Jokers.j_extra_step.loc_def(card)
        return { card.ability.extra.discard_gain } 
    end

    SMODS.Jokers.j_extra_step.calculate = function(self, context)
        -- Trigger after a hand is played and evaluated
        if context.after and not context.individual and not context.repetition then
            
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    -- Utilize Base Game's ease_discard logic
                    ease_discard(self.ability.extra.discard_gain)
                    play_sound('chips1')
                    self:juice_up(0.3, 0.4)
                    
                    -- Visual Feedback on Joker
                    card_eval_status_text(context.blueprint_card or self, "extra", nil, nil, nil, {
                        message = "+" .. self.ability.extra.discard_gain .. " Discard",
                        colour = G.C.RED
                    })
                    return true
                end
            }))
            
        end
    end
    
    -- Animation Update Loop
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        -- Verification check safely
        if self.ability and self.ability.name == "Extra Step" and self.added_to_deck then
            -- Use real-world time for consistent 60fps
            local current_real_time = love.timer.getTime()
            
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
    
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                
                -- SPRITE SHEET LOGIC
                local frame_num = self.ability.extra.current_frame
                local frames_per_sheet = 50
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_extra_step_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end



if config.majesticSolesJoker then
    local majestic_soles = {
        loc = {
            name = "Oiled Soles",
            text = {
                "Gains {X:mult,C:white} X#1# {} Mult",
                "when a {C:attention}Queen{}",
                "is added to your deck",
                "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Majestic Soles",
        slug = "j_majestic_soles",
        ability = {
            name = "Majestic Soles",
            set = "Joker",
            extra = {
                gain = 0.5, -- The gain per Queen
                x_mult = 1  -- Starts at X1
            }
        },
        rarity = 2, -- Uncommon
        cost = 7,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
         -- Adjust if you have a specific soul sprite
    }

    init_joker(majestic_soles)

    function SMODS.Jokers.j_majestic_soles.loc_def(card)
        return { card.ability.extra.gain, card.ability.extra.x_mult }
    end

    SMODS.Jokers.j_majestic_soles.calculate = function(self, context)
        -- ACCELERATOR: Gains power when Queens are added (Deck Manipulation)
        -- Checks 'playing_card_added' context (Used by Hologram in Main.lua)
        if context.playing_card_added and not self.getting_sliced and not context.blueprint then
            local queen_count = 0
            
            -- Iterate through added cards to check for Queens (ID 12)
            if context.cards then
                for _, card in ipairs(context.cards) do
                    if card:get_id() == 12 then
                        queen_count = queen_count + 1
                    end
                end
            end

            if queen_count > 0 then
                self.ability.extra.x_mult = self.ability.extra.x_mult + (self.ability.extra.gain * queen_count)
                
                return {
                    message = localize{type = 'variable', key = 'a_xmult', vars = {self.ability.extra.x_mult}},
                    colour = G.C.RED,
                    card = self
                }
            end
        end

        -- PAYOFF: Provides the XMult during scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.x_mult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.x_mult}},
                    Xmult_mod = self.ability.extra.x_mult,
                    card = self
                }
            end
        end
    end
end
-- Sole Searcher Tarot
-- Theme: "Sole" (Feet) + "Searcher" (Finding a spectral card)
if config.solesearcher then
local sole_searcher = {
    name = "Sole Searcher",
    slug = "c_sole_searcher",
    config = {}, 
    loc = {
        name = "Sole Searcher",
        text = {
            "Create {C:attention}1{} random",
            "{C:spectral}Spectral{} card",
            "{C:inactive}(Excludes {C:legendary}The Soul{}",
            "{C:inactive}and {C:dark_edition}Black Hole{})",
            "{C:inactive}(Must have room)"
        }
    },
    px = 142, 
    py = 190,
    ability_name = "Sole Searcher",
    cost = 3,
    cost_mult = 1,
    consumeable = true,
    discovered = true,
}
init_tarot(sole_searcher)

-- Check if the card can be used (needs room in consumables, accounting for self-consumption)
function SMODS.Tarots.c_sole_searcher.can_use(card)
    if #G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables then 
        return true
    end
    return false
end

-- Usage effect
function SMODS.Tarots.c_sole_searcher.use(card, area, copier)
    -- Audio and visual feedback
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('tarot1')
        card:juice_up(0.3, 0.5)
        return true end }))

    -- Logic to spawn the card
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.0,
        func = (function()
            -- 1. Create a list of valid keys from the Spectral pool
            local valid_spectrals = {}
            for k, v in pairs(G.P_CENTER_POOLS.Spectral) do
                -- 2. Explicitly exclude The Soul and Black Hole
                if v.key ~= 'c_soul' and v.key ~= 'c_black_hole' then
                    table.insert(valid_spectrals, v.key)
                end
            end
            
            -- 3. Select a random key from the filtered list
            local selected_key = pseudorandom_element(valid_spectrals, pseudoseed('sole_searcher'))
            
            -- 4. Create the card using the forced key
            local new_card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, selected_key, 'sol')
            new_card:add_to_deck()
            G.consumeables:emplace(new_card)
            return true
        end)
    }))
end
end

if config.redHeelsJoker then
    local red_heels = {
        loc = {
            name = "Sole Laundering",
            text = {
                "Gains {X:mult,C:white} X#2#{} Mult",
                "for each {C:money}$1{} in debt",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Red Heels",
        slug = "j_red_heels",
        ability = {
            name = "Red Heels",
            set = "Joker",
            extra = {
                gain_per_dollar = 0.2, -- $10 debt = X3 Mult
            }
        },
        rarity = 2, -- Uncommon (Specialist)
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(red_heels)

    -- Dynamic calculation for the tooltip
    function SMODS.Jokers.j_red_heels.loc_def(card)
        local debt = 0
        if G.GAME.dollars < 0 then
            debt = math.abs(G.GAME.dollars)
        end
        
        -- Base is X1, adds gain per dollar of debt
        local current_xmult = 1 + (debt * card.ability.extra.gain_per_dollar)
        
        return { current_xmult, card.ability.extra.gain_per_dollar }
    end

    -- Scoring Logic
    SMODS.Jokers.j_red_heels.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            local debt = 0
            if G.GAME.dollars < 0 then
                debt = math.abs(G.GAME.dollars)
            end
            
            if debt > 0 then
                local xmult = 1 + (debt * self.ability.extra.gain_per_dollar)
                
                return {
                    message = localize{type='variable',key='a_xmult',vars={xmult}},
                    Xmult_mod = xmult,
                    card = self
                }
            end
        end
    end
end

if config.mirageSolesJoker then

    -- ============================================================
    -- MIRAGE SOLES JOKER
    -- Converts played cards of a target rank into the highest
    -- rank in the hand BEFORE scoring. The target rank shifts to
    -- the rank of the first card you discard.
    -- ============================================================

    local mirage_soles = {
        loc = {
            name = "Mirage Soles",
            text = {
                "Converts played cards of {C:attention}#1#{} rank",
                "into the {C:attention}highest rank{} in the hand.",
                "The target rank shifts to the rank",
                "of the {C:attention}first card{} you discard."
            }
        },
        px = 142, py = 190,
        ability_name = "Mirage Soles",
        slug = "j_mirage_soles",
        ability = {
            name = "Mirage Soles",
            set = "Joker",
            extra = { target_rank = "None" }
        },
        rarity = 3,
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(mirage_soles)

    -- ============================================================
    -- TOOLTIP: Dynamic rank display
    -- ============================================================
    function SMODS.Jokers.j_mirage_soles.loc_def(card)
        local rank_name = "None"
        if card.ability.extra.target_rank ~= "None" then
            rank_name = localize(card.ability.extra.target_rank, 'ranks')
        end
        return {
            rank_name
        }
    end

    -- ============================================================
    -- INIT SAFETY: If rank is still None when the run starts
    -- ============================================================
    function SMODS.Jokers.j_mirage_soles.update(self, dt)
        if self.ability.extra.target_rank == "None" and G.STAGE == G.STAGES.RUN then
            local ranks = {"2","3","4","5","6","7","8","9","10","Jack","Queen","King","Ace"}
            self.ability.extra.target_rank = pseudorandom_element(ranks, pseudoseed('mirage_init'))
        end
    end

    -- ============================================================
    -- RANK MAP (shared helper)
    -- ============================================================
    local rank_map = {
        ["2"]="2", ["3"]="3", ["4"]="4", ["5"]="5",
        ["6"]="6", ["7"]="7", ["8"]="8", ["9"]="9",
        ["10"]="T", ["Jack"]="J", ["Queen"]="Q",
        ["King"]="K", ["Ace"]="A"
    }

    -- ============================================================
    -- CALCULATE: Discard shift ONLY
    -- No transformation logic here — the play hook handles that.
    -- ============================================================
    SMODS.Jokers.j_mirage_soles.calculate = function(self, context)

        -- DISCARD SHIFT: Change to the rank of the first discarded card
        if context.pre_discard and not context.blueprint then
            if G.hand and G.hand.highlighted and #G.hand.highlighted > 0 then
                local first_card = G.hand.highlighted[1]
                local new_rank = first_card.base.value
                
                -- Update the target rank to match the discarded card
                self.ability.extra.target_rank = new_rank
                
                return {
                    message = "Target: " .. self.ability.extra.target_rank,
                    colour = G.C.PURPLE
                }
            end
        end

    end

    -- ============================================================
    -- PLAY HOOK: Morph cards BEFORE scoring
    -- This intercepts the play button so transformations happen
    -- before Balatro evaluates the hand type.
    -- ============================================================
    local orig_play = G.FUNCS.play_cards_from_highlighted

    G.FUNCS.play_cards_from_highlighted = function(e)
        local mirage_jokers = SMODS.find_card('j_mirage_soles')

        if next(mirage_jokers) and G.hand and G.hand.highlighted and #G.hand.highlighted > 0 then
            local morph_happened = false

            for _, joker in ipairs(mirage_jokers) do
                if not joker.debuff then
                    local target = joker.ability.extra.target_rank
                    local highest_other_val = -1
                    local highest_other_id = nil

                    -- Find the highest rank among highlighted cards that ISN'T the target
                    for _, c in ipairs(G.hand.highlighted) do
                        if c.base.value ~= target then
                            if c.base.nominal > highest_other_val then
                                highest_other_val = c.base.nominal
                                highest_other_id = c.base.value
                            end
                        end
                    end

                    -- Morph all target-rank cards into that highest rank
                    if highest_other_id then
                        for _, c in ipairs(G.hand.highlighted) do
                            if c.base.value == target then
                                local suit_prefix = string.sub(c.base.suit, 1, 1)
                                local new_code = suit_prefix .. '_' .. (rank_map[highest_other_id] or "A")
                                if G.P_CARDS[new_code] and c.base.value ~= highest_other_id then
                                    c:set_base(G.P_CARDS[new_code])
                                    c:juice_up(0.5, 0.5)
                                    morph_happened = true
                                end
                            end
                        end

                        -- Visual feedback on the joker itself
                        if morph_happened then
                            joker:juice_up(0.8, 0.8)
                            play_sound('tarot1', 0.9, 0.5)
                        end
                    end
                end
            end

            if morph_happened then
                -- Short delay so the player sees the morph, then proceed to scoring
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        orig_play(e)
                        return true
                    end
                }))
                return
            end
        end

        -- No morph needed — play normally
        orig_play(e)
    end

end

if config.expandedArchTarot then
    local expanded_arch = {
        name = "Expanded Arch",
        slug = "c_feet_expanded_arch",
        config = {},
        loc = {
            name = "Expanded Arch",
            text = {
                "Earn {C:money}$3{} for each",
                "card in your deck above",
                "starting size {C:inactive}(Max of {C:money}$50{C:inactive})",
                "{C:inactive}(Currently {C:money}$#1#{C:inactive})",
                
            }
        },
        px = 142, 
        py = 190,
        cost = 3,
        cost_mult = 1,
        consumeable = true,
        discovered = true,
    }
    init_tarot(expanded_arch)

    -- Dynamic localization to show the potential payout
    function SMODS.Tarots.c_feet_expanded_arch.loc_def(card)
        local bonus = 0
        if G.playing_cards and G.GAME.starting_deck_size then
            bonus = math.max(0, #G.playing_cards - G.GAME.starting_deck_size)
            bonus = bonus * 3
            if bonus > 50 then 
                bonus = 50
            end
        end
        return {bonus}
    end

    -- [FIXED] Condition: Can only be used if deck is larger than starting size
    function SMODS.Tarots.c_feet_expanded_arch.can_use(card)
        if G.playing_cards and G.GAME.starting_deck_size then
            if #G.playing_cards > G.GAME.starting_deck_size then
                return true
            end
        end
        return false
    end

    -- Usage effect
    function SMODS.Tarots.c_feet_expanded_arch.use(card, area, copier)
        local bonus = 0
        -- Double check calculation just to be safe
        if G.playing_cards and G.GAME.starting_deck_size then
            bonus = math.max(0, #G.playing_cards - G.GAME.starting_deck_size)
            bonus = bonus * 3
            if bonus > 50 then
                bonus = 50
            end
            
        end
        
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                ease_dollars(bonus, true)
                return true 
            end 
        }))
        
        delay(0.6)
    end
end

if config.pristineSolesJoker then
    local pristine_soles = {
        loc = {
            name = "Pristine Soles",
            text = {
                "Gains {X:mult,C:white} X#2#{} Mult",
                "if the {C:attention}Shop{} is left",
                "without buying anything",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Pristine Soles",
        slug = "j_pristine_soles",
        ability = {
            name = "Pristine Soles",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 0.2, -- Kept the balanced value
                bought_this_shop = false -- Custom flag to track purchases
            }
        },
        rarity = 1,
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(pristine_soles)

    function SMODS.Jokers.j_pristine_soles.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end

    SMODS.Jokers.j_pristine_soles.calculate = function(self, context)
        -- 1. Apply XMult during scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end

        -- 2. Track Purchases (Buying Cards/Vouchers OR Opening Boosters)
        -- We flag the joker as 'dirty' if any transaction occurs
        if not context.blueprint and (context.buying_card or context.open_booster) then
            self.ability.extra.bought_this_shop = true
        end

        -- 3. Check at the end of the shop
        if context.ending_shop and not context.blueprint then
            if not self.ability.extra.bought_this_shop then
                -- If we didn't buy anything, upgrade
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card_eval_status_text(self, 'extra', nil, nil, nil, {
                            message = localize('k_upgrade_ex'),
                            colour = G.C.RED
                        })
                        return true
                    end
                }))
            end
            
            -- IMPORTANT: Always reset the flag for the next shop
            self.ability.extra.bought_this_shop = false
        end
    end
end

if config.restlessFeetJoker then
    
    -- 1. MULTI-SHEET ATLAS SETUP
    local total_frames = 128
    local frames_per_sheet = 50
    
    -- Register all 3 sheets dynamically
    local function register_restless_sheets()
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            SMODS.Atlas({
                key = "j_restless_feet_sheet_" .. sheet_idx,
                -- Make sure your images are named like this in your assets/1x and 2x folders
                path = "j_restless_feet_sheet_" .. sheet_idx .. ".png", 
                px = 142,
                py = 190,
            }):register()
        end
    end
    
    register_restless_sheets()

    -- 2. CREATE JOKER
    local restless_feet = {
        loc = {
            name = "Restless Feet",
            text = {
                "Gains {C:chips}+#1#{} Chips when each",
                "played {C:attention}#2#{} is scored",
                "{s:0.8}Rank changes every hand played{}",
                "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Restless Feet",
        slug = "j_restless_feet",
        ability = {
            name = "Restless Feet",
            set = "Joker",
            extra = {
                chip_gain = 5,
                chips = 0,
                target_rank = "None",
                -- Picture Tracking
                current_pic = 0, -- 0-indexed (0 to 127)
                max_pics = total_frames, 
                frames_per_sheet = frames_per_sheet,
                columns = 10 
            }
        },
        rarity = 1,
        cost = 5,
        set = "Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_restless_feet_sheet_1", -- Start on the first sheet
        pos = {x = 0, y = 0}
    }

    init_joker(restless_feet)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_restless_feet.loc_def(card)
        local rank_name = "None"
        if card.ability.extra.target_rank ~= "None" then
            rank_name = localize(card.ability.extra.target_rank, 'ranks')
        end
        return { 
            card.ability.extra.chip_gain, 
            rank_name, 
            card.ability.extra.chips 
        }
    end

    -- 4. HELPER FUNCTION: Change the Sprite & Atlas
    local function update_restless_sprite(card)
        if card.children.center then
            local pic_index = card.ability.extra.current_pic
            local sheet_size = card.ability.extra.frames_per_sheet
            local cols = card.ability.extra.columns
            
            -- Determine which sheet (1, 2, or 3) this picture is on
            -- math.floor(pic_index / 50) gives 0 for 0-49, 1 for 50-99, etc.
            local sheet_idx = math.floor(pic_index / sheet_size) + 1 
            
            -- Determine the specific frame number WITHIN that current sheet
            local frame_in_sheet = pic_index % sheet_size
            
            -- Calculate X and Y position on that specific sheet
            local sprite_x = frame_in_sheet % cols
            local sprite_y = math.floor(frame_in_sheet / cols)
            
            local target_atlas = "j_restless_feet_sheet_" .. sheet_idx
            
            -- Apply the new texture sheet if it exists, then set the grid position
            if G.ASSET_ATLAS[target_atlas] then
                card.children.center.atlas = G.ASSET_ATLAS[target_atlas]
                card.children.center:set_sprite_pos({x = sprite_x, y = sprite_y})
            end
        end
    end

    -- 5. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Restless Feet" and not from_debuff then
            if self.ability.extra.target_rank == "None" then
                local ranks = {"2","3","4","5","6","7","8","9","10","Jack","Queen","King","Ace"}
                self.ability.extra.target_rank = pseudorandom_element(ranks, pseudoseed('restless_init'))
                
                -- Pick a random starting frame between 0 and 127
                self.ability.extra.current_pic = math.floor(pseudorandom(pseudoseed('restless_pic')) * self.ability.extra.max_pics)
                update_restless_sprite(self)
            end
        end
    end

    -- 6. CALCULATION & TRIGGERS
    SMODS.Jokers.j_restless_feet.calculate = function(self, context)
        
        -- A. SCALING: Check each individual card as it is scored
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card.base.value == self.ability.extra.target_rank and not context.other_card.debuff then
                self.ability.extra.chips = self.ability.extra.chips + self.ability.extra.chip_gain
                
                G.E_MANAGER:add_event(Event({
                    func = function()
                        self:juice_up(0.3, 0.4)
                        return true
                    end
                }))
                
                return {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.CHIPS,
                    card = self
                }
            end
        end

        -- B. SCORING: Apply the accumulated chips
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.chips > 0 then
                return {
                    message = localize { type = "variable", key = "a_chips", vars = { self.ability.extra.chips } },
                    chip_mod = self.ability.extra.chips,
                    card = self
                }
            end
        end

        -- C. SHIFT MECHANIC: Change Rank & Picture after every hand played
-- C. SHIFT MECHANIC: Change Rank & Picture after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
            local ranks = {"2","3","4","5","6","7","8","9","10","Jack","Queen","King","Ace"}
            local old_rank = self.ability.extra.target_rank
            local new_rank = old_rank
            
            while new_rank == old_rank do
                new_rank = pseudorandom_element(ranks, pseudoseed("restless_shift" .. G.GAME.round_resets.hands))
            end
            
            self.ability.extra.target_rank = new_rank
            self.ability.extra.current_pic = (self.ability.extra.current_pic + 1) % self.ability.extra.max_pics

            -- 1. Force Hover State (Smoothly grows the card and brings it to the front layer)
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.1,
                func = function()
                    self.states.hover.is = true 
                    return true
                end
            }))

            -- 2. Flip face down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.15,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))
            
            -- 3. Wait for the card to be facedown, then swap the sprite
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    update_restless_sprite(self)
                    return true
                end
            }))

            -- 4. Flip back face up to reveal the new picture
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.15,
                func = function()
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))

            -- 5. Remove Hover State (Smoothly shrinks back to normal and returns to the standard Joker line)
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self.states.hover.is = false 
                    return true
                end
            }))
        end
    end
end


if config.houseOfQueensJoker then 
    -- Create Joker
    local house_queens = { 
        loc = { 
            name = "House of Queens", 
            text = { 
                "{C:chips}+#1#{} Chips for each", 
                "{C:attention}Queen{} in your",
                "{C:attention}full deck{}", 
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}" 
            } 
        }, 
        slug = "j_house_queens", 
        px = 142, 
        py = 190,
        ability = { 
            name = "House of Queens", 
            set = "Joker", 
            extra = { 
                chips = 10, 
                current_chips = 0
            } 
        }, 
        rarity = 1, -- Uncommon
        cost = 4, 
        unlocked = true, 
        discovered = true, 
        blueprint_compat = true, 
        eternal_compat = true, 
         
    } 

    -- Initialize Joker
    init_joker(house_queens) 

    -- Set local variables for UI display
    function SMODS.Jokers.j_house_queens.loc_def(card)
        local queens = 0
        -- Utilize game code G.playing_cards to count full deck
        if G.playing_cards then
            for _, v in ipairs(G.playing_cards) do
                if v:get_id() == 12 then -- 12 is the ID for Queen in Main.lua
                    queens = queens + 1 
                end
            end
        end
        card.ability.extra.current_chips = queens * card.ability.extra.chips
        return { card.ability.extra.chips, card.ability.extra.current_chips } 
    end 

    -- Calculate effects
    SMODS.Jokers.j_house_queens.calculate = function(self, context) 
        -- Check for main scoring context
        if context.joker_main then
            local queens = 0
            for _, v in ipairs(G.playing_cards) do
                if v:get_id() == 12 then 
                    queens = queens + 1 
                end
            end
            local chips_gain = queens * self.ability.extra.chips
            
            if chips_gain > 0 then
                return {
                    message = localize{type='variable',key='a_chips',vars={chips_gain}},
                    chip_mod = chips_gain,
                    colour = G.C.CHIPS
                }
            end
        end 
    end 
end



-- Patch CardArea:draw() to respect a DRAW_ON_TOP flag
local orig_cardarea_draw = CardArea.draw
function CardArea:draw()
    if self == G.jokers then
        -- Check if ANY card needs to be drawn on top
        local deferred = {}
        for _, c in ipairs(self.cards) do
            if c.DRAW_ON_TOP then
                table.insert(deferred, c)
            end
        end
        
        -- If nothing is flagged, just draw normally
        if #deferred == 0 then
            orig_cardarea_draw(self)
            return
        end
        
        -- Otherwise: draw the area normally first (background, box, count, etc.)
        -- but temporarily hide the flagged cards
        for _, c in ipairs(deferred) do
            c.NO_DRAW = true
        end
        
        orig_cardarea_draw(self)
        
        -- Now draw the flagged cards on top
        for _, c in ipairs(deferred) do
            c.NO_DRAW = false
            c:draw()
        end
    else
        orig_cardarea_draw(self)
    end
end

-- Also patch Card:draw() to respect NO_DRAW
local orig_card_draw = Card.draw
function Card:draw(layer)
    if self.NO_DRAW then return end
    orig_card_draw(self, layer)
end

-- Helper function for Sounds



if config.borrowedHeelsJoker then

    -- 1. MASTER ANIMATION TABLE
    -- This acts as the pool we draw our random 8 animations from.
    local all_heels_pool = {
        
{ name = "1",      frames = 1694,  folder = "animations/1" },
{ name = "2",      frames = 973,  folder = "animations/2" },
{ name = "3",      frames = 1213, folder = "animations/3" },
{ name = "4",      frames = 1364, folder = "animations/4" },
{ name = "5",      frames = 1592, folder = "animations/5" },
{ name = "6",      frames = 344,  folder = "animations/6" },
{ name = "7",      frames = 2031, folder = "animations/7" },
{ name = "8",      frames = 2544, folder = "animations/8" },
{ name = "9",      frames = 583,  folder = "animations/9" },
{ name = "10",     frames = 1090, folder = "animations/10" },
{ name = "11",     frames = 574,  folder = "animations/11" },
{ name = "12",     frames = 543,  folder = "animations/12" },
{ name = "13",     frames = 812,  folder = "animations/13" },
{ name = "14",     frames = 855,  folder = "animations/14" },
{ name = "15",     frames = 615,  folder = "animations/15" },
{ name = "16",     frames = 380,  folder = "animations/16" },
{ name = "17",     frames = 617,  folder = "animations/17" },
{ name = "18",     frames = 901,  folder = "animations/18" },
{ name = "19",     frames = 901,  folder = "animations/19" },
{ name = "20",     frames = 279,  folder = "animations/20" },
{ name = "21",     frames = 419,  folder = "animations/21" },
{ name = "22",     frames = 465,  folder = "animations/22" },
{ name = "23",     frames = 347,  folder = "animations/23" },
{ name = "24",     frames = 407,  folder = "animations/24" },
{ name = "25",     frames = 1075, folder = "animations/25" },
{ name = "26",     frames = 612,  folder = "animations/26" },
{ name = "27",     frames = 482,  folder = "animations/27" },
{ name = "28",     frames = 632,  folder = "animations/28" },
{ name = "29",     frames = 754,  folder = "animations/29" },
{ name = "30",     frames = 327,  folder = "animations/30" },
{ name = "31",     frames = 883,  folder = "animations/31" },
{ name = "32",     frames = 465,  folder = "animations/32" },
{ name = "33",     frames = 978,  folder = "animations/33" },
{ name = "34",     frames = 328,  folder = "animations/34" },
{ name = "35",     frames = 247,  folder = "animations/35" },
{ name = "36",     frames = 263,  folder = "animations/36" },
{ name = "37",     frames = 357,  folder = "animations/37" },
{ name = "38",     frames = 357,  folder = "animations/38" },
{ name = "39",     frames = 345,  folder = "animations/39" },
{ name = "40",     frames = 973, folder = "animations/40" },
{ name = "41",     frames = 750,  folder = "animations/41" },
{ name = "42",     frames = 800, folder = "animations/42" },
{ name = "43",     frames = 800, folder = "animations/43" },
{ name = "44",     frames = 2700, folder = "animations/44" },
{ name = "45",     frames = 899,  folder = "animations/45" },
{ name = "46",     frames = 311,  folder = "animations/46" },
{ name = "47",     frames = 708,  folder = "animations/47" },
{ name = "48",     frames = 862,  folder = "animations/48" },
{ name = "49",     frames = 2351,  folder = "animations/49" },
{ name = "50",     frames = 1772,  folder = "animations/50" },
{ name = "51",     frames = 360,  folder = "animations/51" },
{ name = "52",     frames = 860,  folder = "animations/52" },
    }

    -- Randomize list based on OS time (Triggers every time the game bootup mounts mods)
    math.randomseed(os.time())
    for i = #all_heels_pool, 2, -1 do
        local j = math.random(i)
        all_heels_pool[i], all_heels_pool[j] = all_heels_pool[j], all_heels_pool[i]
    end

    local heels_animations = {}
    -- Load only the first 8 from our shuffled pool
    for i = 1, 8 do
        heels_animations[i] = all_heels_pool[i]
    end
    -- Keep 'win' explicitly at index 11 because your logic calls `clothing_state = 11` for Ante 8
    heels_animations[11] = { name = "1", frames = 1694, folder = "animations/1" }

    local dynamic_frame_limits = {}
    local heels_state_map = {}

    -- Helper to register all sprite sheets for a state
    local function register_state_sheets(state_name, total_frames, subfolder)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            
            local path = subfolder and 
                (subfolder .. "/j_borrowed_heels_" .. state_name .. "_sheet_" .. sheet_idx .. ".png") or
                ("animations/j_borrowed_heels_" .. state_name .. "_sheet_" .. sheet_idx .. ".png")
            
            SMODS.Atlas({
                key = "j_borrowed_heels_" .. state_name .. "_sheet_" .. sheet_idx,
                path = path,
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end

    -- Auto-register sheets and build our dynamic arrays
    -- We use `pairs` instead of `ipairs` because our table is now sparse (Indices 1-8, and 11)
    for i, anim in pairs(heels_animations) do
        register_state_sheets(anim.name, anim.frames, anim.folder)
        dynamic_frame_limits[i] = anim.frames
        heels_state_map[i] = anim.name
    end

    -- Capture whatever animation got randomly placed in slot 1 for our fallbacks
    local default_heels_anim = heels_animations[1].name

    -- 2. Define Joker
    local borrowed_heels = SMODS.Joker:new(
        "Borrowed Heels", 
        "j_borrowed_heels", 
        { 
            extra = { 
                cost = 3,
                clothing_state = 1, -- Start on 1 instead of 28 to guarantee it hits a valid loaded index
                current_frame = 1,
                state_history = {},
                frame_limits = dynamic_frame_limits,
                frame_timer = 0,
                frame_delay = 0.016,
                hand_counter = 0,
                done = false,
                active_dimmer = nil
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Borrowed Heels",
            text = {
                "{C:attention}+1{} Joker Slot.",
                "Create a {C:attention}Queen{} with random",
                "{C:dark_edition}Edition{} when Blind selected.",
                "Gain {C:red}$#1#{} when Queen is scored.",
                "Queen is {C:red}destroyed{} at end of round.",
                "{C:inactive}(Must stay rightmost Joker){}"
            }
        },
        1, 
        2, 
        true, 
        true, 
        false, 
        true 
    )
    
    -- Dynamically set the default atlas to whatever we loaded into slot 1
    borrowed_heels.atlas = "j_borrowed_heels_" .. default_heels_anim .. "_sheet_1"
    borrowed_heels:register()

    -- 3. Mechanics 
    
    SMODS.Jokers.j_borrowed_heels.add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local heels_count = 0
            if G.jokers and G.jokers.cards then
                for _, v in ipairs(G.jokers.cards) do
                    if v.ability.name == "Borrowed Heels" and v ~= card then
                        heels_count = heels_count + 1
                    end
                end
            end

            if heels_count > 0 then
                card:start_dissolve()
                card_eval_status_text(card, 'extra', nil, nil, nil, {
                    message = localize('k_nope_ex'),
                    colour = G.C.RED
                })
                return 
            end

            if card.edition and card.edition.negative then
                card:set_edition(nil, true) 
            end
            G.jokers.config.card_limit = G.jokers.config.card_limit + 1
        end
    end

    SMODS.Jokers.j_borrowed_heels.remove_from_deck = function(self, card, from_debuff)
        if not from_debuff then 
            G.jokers.config.card_limit = G.jokers.config.card_limit - 1 
        end
    end

    function SMODS.Jokers.j_borrowed_heels.loc_def(card)
        return { card.ability.extra.cost }
    end

    -- Helper to pick next state avoiding recent repeats
    local function pick_next_state(self, history_size)
        history_size = history_size or 3
        local possible_states = {}
        local history = self.ability.extra.state_history
        
        -- We now build the pool of valid states directly from loaded keys to prevent empty indexing
        for i, _ in pairs(self.ability.extra.frame_limits) do
            if i ~= 11 then
                local is_recent = false
                for j = 1, #history do
                    if history[j] == i then
                        is_recent = true
                        break
                    end
                end
                
                if not is_recent then
                    table.insert(possible_states, i)
                end
            end
        end
        
        -- Fallback if the pool is empty due to small size
        if #possible_states == 0 then
            for i, _ in pairs(self.ability.extra.frame_limits) do
                if i ~= 11 then table.insert(possible_states, i) end
            end
        end
        
        local new_state = pseudorandom_element(possible_states, pseudoseed('borrowed_heels_state'))

        table.insert(history, 1, new_state)
        if #history > history_size then 
            table.remove(history) 
        end
        
        return new_state
    end

    SMODS.Jokers.j_borrowed_heels.calculate = function(self, context)

        -- A. Movement & Scoring Logic
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card.ability.borrowed_heels_queen and not self.ability.extra.done then
                
                self.ability.extra.done = true
                self.ability.extra.current_frame = 1
                self.ability.extra.frame_timer = 0  
                local card = self
                local cost = self.ability.extra.cost
                
                ease_dollars(cost)

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        if card.facing == 'back' then card:flip() end
                        card.states.drag.is = true 
                        card.states.collide.can = false
                        card.DRAW_ON_TOP = true 
                        
                        local dest_x = G.play.T.x + (G.play.T.w / 2) - (card.T.w / 2)
                        local dest_y = G.play.T.y - card.T.h - 1.7
                        card.T.x = dest_x
                        card.T.y = dest_y
                        card.T.r = 0
                        card.T.scale = 1.7
                        
                        play_sound('cardFan2')
                        card:juice_up(1, 0.5)
                        return true
                    end
                }))
                
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4, 
                    func = function()
                        card_eval_status_text(card, 'extra', nil, nil, nil, {
                            message = localize('$')..cost,
                            colour = G.C.RED
                        })
                        return true
                    end
                }))

                self.ability.extra.current_frame = 1
                self.ability.extra.frame_timer = 0
                
                local current_state = self.ability.extra.clothing_state
                local total_frames_needed = self.ability.extra.frame_limits[current_state] or 1
                
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    blocking = true,
                    func = function()
                        if self.ability.extra.current_frame >= total_frames_needed - 2 or 
                        (self.ability.extra.current_frame <= 5 and self.ability.extra.frame_timer > 0.1) then
                            return true
                        end
                        return false
                    end
                }))

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        card.states.drag.is = false
                        card.states.collide.can = true
                        card.T.scale = 1
                        card.DRAW_ON_TOP = false
                        if card.facing == 'front' then card:flip() end
                        self.ability.extra.clothing_state = pick_next_state(self, 7)
                        self.ability.extra.current_frame = 1

                        if card.area then 
                            card.area:align_cards() 
                        end
                        return true
                    end
                }))
                
                return nil
            end
        end

        -- B. Resurrection Logic
        if context.after and not context.blueprint then
            local queen_was_played = false
            for _, v in ipairs(context.full_hand) do
                if v.ability.borrowed_heels_queen then queen_was_played = true end
            end

            if queen_was_played and G.GAME.chips < G.GAME.blind.chips then
                self.ability.extra.done = false

                G.E_MANAGER:add_event(Event({
                    func = function()
                        local suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('heels_res'))
                        local card = create_playing_card({front = G.P_CARDS[suit..'_Q']}, G.hand, nil, nil, {G.C.SECONDARY_SET.Joker})
                        local edition = poll_edition('borrowed_heels', nil, true, true)
                        if edition then card:set_edition(edition, true) end
                        
                        card.ability.borrowed_heels_queen = true
                        card.ability.heels_temp_spawn = true 
                        
                        if G.jokers then
                            for i = 1, #G.jokers.cards do
                                G.jokers.cards[i]:calculate_joker({playing_card_added = true, cards = {card}})
                            end
                        end
                        self:juice_up(0.5, 0.5)
                        
                        return true
                    end
                }))
                card_eval_status_text(self, 'extra', nil, nil, nil, {message = "Again!", colour = G.C.PURPLE})
            end
        end

        -- C. Initial Creation
        if context.setting_blind and not self.getting_sliced then
            self.ability.extra.done = false
            G.E_MANAGER:add_event(Event({
                func = function()
                    local suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('heels_suit'))
                    local card = create_playing_card({front = G.P_CARDS[suit..'_Q']}, G.hand, nil, nil, {G.C.SECONDARY_SET.Joker})
                    local edition = poll_edition('borrowed_heels', nil, true, true)
                    if edition then card:set_edition(edition, true) end
                    card.ability.borrowed_heels_queen = true
                    
                    if G.jokers then
                        for i = 1, #G.jokers.cards do
                            G.jokers.cards[i]:calculate_joker({playing_card_added = true, cards = {card}})
                        end
                    end
                    self:juice_up(0.5, 0.5)
                    play_sound('card1')
                    return true
                end
            }))
            card_eval_status_text(self, 'extra', nil, nil, nil, {message = "Borrowed!", colour = G.C.PURPLE})
        end

        -- E. Cleanup & State Switching
        if context.end_of_round and not context.individual and not context.repetition then

            local cards_to_destroy = {}
            for _, area in ipairs({G.hand, G.discard, G.deck, G.play}) do
                for _, v in ipairs(area.cards) do
                     if v.ability.borrowed_heels_queen then 
                        table.insert(cards_to_destroy, v) 
                     end
                end
            end

            if #cards_to_destroy > 0 then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after', delay = 0.2,
                    func = function()
                        for _, v in ipairs(cards_to_destroy) do
                            v:start_dissolve()
                        end
                        return true
                    end
                }))
            end

            if G.GAME.blind.boss and G.GAME.round_resets.ante == 8 then
                self.ability.extra.clothing_state = 11 
                self.ability.extra.current_frame = 1
                self.ability.extra.frame_timer = 0  
                local card = context.blueprint_card or self

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        if card.facing == 'back' then card:flip() end

                        card.states.drag.is = true 
                        card.states.collide.can = false
                        card.DRAW_ON_TOP = true 
                        
                        local dest_x = G.play.T.x + (G.play.T.w / 2) - (card.T.w / 2)
                        local dest_y = G.play.T.y - card.T.h
                        card.T.x = dest_x
                        card.T.y = dest_y
                        card.T.r = 0
                        card.T.scale = 2.5
                        
                        play_sound('feet_win')
                        card:juice_up(1, 0.5)
                        return true
                    end
                }))

                self.ability.extra.current_frame = 1
                self.ability.extra.frame_timer = 0
                
                local current_state = self.ability.extra.clothing_state
                local total_frames_needed = self.ability.extra.frame_limits[current_state] or 1
                
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    blocking = true,
                    func = function()
                        if self.ability.extra.current_frame >= total_frames_needed - 2 or 
                        (self.ability.extra.current_frame <= 5 and self.ability.extra.frame_timer > 0.1) then
                            return true
                        end
                        return false
                    end
                }))

                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        card.states.drag.is = false
                        card.states.collide.can = true
                        card.T.scale = 1
                        card.DRAW_ON_TOP = false
                        if card.facing == 'front' then card:flip() end
                        self.ability.extra.clothing_state = pick_next_state(self, 7)
                        self.ability.extra.current_frame = 1
                        if card.area then 
                            card.area:align_cards() 
                        end
                        
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            func = function()
                                play_sound('card1')
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return nil
            
            elseif G.GAME.blind.boss and G.GAME.round_resets.ante ~= 8 then
                self.ability.extra.clothing_state = pick_next_state(self, 7)
                self.ability.extra.current_frame = 1
                
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    func = function()
                        play_sound('card1')
                        return true
                    end
                }))
            end
        end
    end

    -- 4. Update Loop (Animation + Shop Trick)
    local borrowed_heels_update_ref = Card.update
    function Card:update(dt)
        borrowed_heels_update_ref(self, dt)
    
        if self.ability.name == "Borrowed Heels" then

            if self.area == G.jokers and self.facing == 'front' and not self.states.drag.is then
                self:flip()
            end
            
            local current_real_time = love.timer.getTime()
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
    
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                local state = self.ability.extra.clothing_state
                local max_frames_for_this_state = self.ability.extra.frame_limits[state] or 6
    
                if self.ability.extra.current_frame > max_frames_for_this_state then
                    self.ability.extra.current_frame = 1
                end
    
                -- Dynamically map, falling back to the 1st loaded item to prevent crashes on excluded sheets
                local current_state_str = heels_state_map[state] or default_heels_anim
    
                local frame_num = self.ability.extra.current_frame
                local frames_per_sheet = 50
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_borrowed_heels_"..current_state_str.."_sheet_"..sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
            
            -- Safety check for Atlas
            if self.children.center then
                local current_atlas_name = self.children.center.atlas and self.children.center.atlas.name or ""
                
                local target_str = heels_state_map[self.ability.extra.clothing_state] or default_heels_anim
    
                local frame_num = self.ability.extra.current_frame
                local sheet_idx = math.ceil(frame_num / 50)
                local frame_in_sheet = ((frame_num - 1) % 50)
                local correct_key = "j_borrowed_heels_"..target_str.."_sheet_"..sheet_idx
                
                if current_atlas_name ~= correct_key then
                    if G.ASSET_ATLAS[correct_key] then
                        self.children.center.atlas = G.ASSET_ATLAS[correct_key]
                        self.children.center:set_sprite_pos({
                            x = frame_in_sheet % 10, 
                            y = math.floor(frame_in_sheet / 10)
                        })
                    end
                end
            end
    
            -- Enforce Position
            if G.jokers and self.area == G.jokers and not self.states.drag.is and not self.getting_sliced then
                local jokers = G.jokers.cards
                local my_pos = nil
                
                for k, v in ipairs(jokers) do
                    if v == self then my_pos = k; break end
                end
    
                if my_pos and my_pos < #jokers then
                    local neighbor = jokers[my_pos + 1]
                    if neighbor.ability.name ~= "Borrowed Heels" then
                        G.jokers:remove_card(self)
                        G.jokers:emplace(self, nil, true)
                        self:align()
                    end
                end
            end
        end
    end
end

if config.RoseJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_roses_feet_sheet",
        path = "j_roses_feet_sheet.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
        frames = 10 
    }):register()

    -- 2. CREATE JOKER
    local roses_feet = {
        loc = {
            name = "Rose's Feet",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "played {C:diamonds}Diamond{} card scored",
                "{s:0.8}Value changes every hand played{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Rose's Feet",
        slug = "j_roses_feet",
        ability = {
            name = "Rose's Feet",
            set = "Joker",
            extra = {
                current_mult = 1, -- The actual math value
                visual_mult = 1   -- The value the sprite uses
            }
        },
        rarity = 1, -- Common
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_roses_feet_sheet" -- Links to the custom atlas
    }

    init_joker(roses_feet, true)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_roses_feet.loc_def(card)
        return { card.ability.extra.current_mult }
    end

    -- 4. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Rose's Feet" and not from_debuff then
            local starting_mult = math.floor(pseudorandom('roses_init') * 10) + 1
            self.ability.extra.current_mult = starting_mult
            self.ability.extra.visual_mult = starting_mult
        end
    end

    -- 5. CALCULATION & TRIGGERS
    SMODS.Jokers.j_roses_feet.calculate = function(self, context)
        
        -- A. Apply Mult for every Diamond scored
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Diamonds') and not context.other_card.debuff then
                return {
                    mult = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

     -- B. Shift Mult value after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
                
            local hands_played = G.GAME and G.GAME.hands_played or 0
-- [NEW CODE] Guarantee a different multiplier frame
            local new_mult = self.ability.extra.current_mult
            local loop_breaker = 0

            -- Keep randomizing as long as the new number matches the old number
            while new_mult == self.ability.extra.current_mult and loop_breaker < 50 do
                -- We add the loop_breaker to the seed string so it generates a new random number every loop
                new_mult = math.floor(pseudorandom('roses_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 10) + 1
                loop_breaker = loop_breaker + 1
            end            
                        -- Update the math immediately for the next hand
            self.ability.extra.current_mult = new_mult
            
            -- Tell the SPRITE to wait until the animations finish
            -- Step 1: Flip the card face down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.3, 0.3)
                    return true
                end
            }))
            
            -- Step 2: Swap the sprite in secret, then flip it back up!
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = function()
                    self.ability.extra.visual_mult = new_mult
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))
            

        end
    end

    -- 6. SPRITE UPDATE 
    function SMODS.Jokers.j_roses_feet.update(card, dt)
        if card.children.center then
            -- Look at visual_mult instead of current_mult!
            local mult_val = card.ability.extra.visual_mult or 1
            
            -- Ensure the frame is between 0 and 9
            local frame_x = math.max(0, math.min(9, mult_val - 1))
            
            -- Since your sprite sheet is horizontal (x-axis), y is always 0
            card.children.center:set_sprite_pos({ x = frame_x, y = 0 })
        end
    end
end
if config.AlyonasJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_alyonas_feet_sheet",
        path = "j_alyonas_feet_sheet.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
        frames = 10 
    }):register()

    -- 2. CREATE JOKER
    local alyonas_feet = {
        loc = {
            name = "Alyona's Feet",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "played {C:clubs}Club{} card scored",
                "{s:0.8}Value changes every hand played{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Alyona's Feet",
        slug = "j_alyonas_feet",
        ability = {
            name = "Alyona's Feet",
            set = "Joker",
            extra = {
                current_mult = 1, -- The actual math value
                visual_mult = 1   -- The value the sprite uses
            }
        },
        rarity = 1, -- Common
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_alyonas_feet_sheet" -- Links to the custom atlas
    }

    init_joker(alyonas_feet, true)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_alyonas_feet.loc_def(card)
        return { card.ability.extra.current_mult }
    end

    -- 4. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Alyona's Feet" and not from_debuff then
            local starting_mult = math.floor(pseudorandom('alyonas_init') * 10) + 1
            self.ability.extra.current_mult = starting_mult
            self.ability.extra.visual_mult = starting_mult
        end
    end

    -- 5. CALCULATION & TRIGGERS
    SMODS.Jokers.j_alyonas_feet.calculate = function(self, context)
        
        -- A. Apply Mult for every Club scored
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Clubs') and not context.other_card.debuff then
                return {
                    mult = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

     -- B. Shift Mult value after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
                
            local hands_played = G.GAME and G.GAME.hands_played or 0
        -- [NEW CODE] Guarantee a different multiplier frame
        local new_mult = self.ability.extra.current_mult
        local loop_breaker = 0

        -- Keep randomizing as long as the new number matches the old number
        while new_mult == self.ability.extra.current_mult and loop_breaker < 50 do
            -- We add the loop_breaker to the seed string so it generates a new random number every loop
            new_mult = math.floor(pseudorandom('alyonas_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 10) + 1
            loop_breaker = loop_breaker + 1
        end            
            -- Update the math immediately for the next hand
            self.ability.extra.current_mult = new_mult
            
            -- Tell the SPRITE to wait until the animations finish
            -- Step 1: Flip the card face down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.3, 0.3)
                    return true
                end
            }))
            
            -- Step 2: Swap the sprite in secret, then flip it back up!
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = function()
                    self.ability.extra.visual_mult = new_mult
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))

        end
    end

    -- 6. SPRITE UPDATE 
    function SMODS.Jokers.j_alyonas_feet.update(card, dt)
        if card.children.center then
            -- Look at visual_mult instead of current_mult!
            local mult_val = card.ability.extra.visual_mult or 1
            
            -- Ensure the frame is between 0 and 9
            local frame_x = math.max(0, math.min(9, mult_val - 1))
            
            -- Since your sprite sheet is horizontal (x-axis), y is always 0
            card.children.center:set_sprite_pos({ x = frame_x, y = 0 })
        end
    end
end
if config.SusiesJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_susies_feet_sheet",
        path = "j_susies_feet_sheet.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
        frames = 10 
    }):register()

    -- 2. CREATE JOKER
    local susies_feet = {
        loc = {
            name = "Susie's Feet",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "played {C:spades}Spade{} card scored",
                "{s:0.8}Value changes every hand played{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Susie's Feet",
        slug = "j_susies_feet",
        ability = {
            name = "Susie's Feet",
            set = "Joker",
            extra = {
                current_mult = 1, -- The actual math value
                visual_mult = 1   -- The value the sprite uses
            }
        },
        rarity = 1, -- Common
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_susies_feet_sheet" -- Links to the custom atlas
    }

    init_joker(susies_feet, true)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_susies_feet.loc_def(card)
        return { card.ability.extra.current_mult }
    end

    -- 4. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Susie's Feet" and not from_debuff then
            local starting_mult = math.floor(pseudorandom('susies_init') * 10) + 1
            self.ability.extra.current_mult = starting_mult
            self.ability.extra.visual_mult = starting_mult
        end
    end

    -- 5. CALCULATION & TRIGGERS
    SMODS.Jokers.j_susies_feet.calculate = function(self, context)
        
        -- A. Apply Mult for every Spade scored
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Spades') and not context.other_card.debuff then
                return {
                    mult = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

     -- B. Shift Mult value after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
                
            local hands_played = G.GAME and G.GAME.hands_played or 0
-- [NEW CODE] Guarantee a different multiplier frame
            local new_mult = self.ability.extra.current_mult
            local loop_breaker = 0

            -- Keep randomizing as long as the new number matches the old number
            while new_mult == self.ability.extra.current_mult and loop_breaker < 50 do
                -- We add the loop_breaker to the seed string so it generates a new random number every loop
                new_mult = math.floor(pseudorandom('susies_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 10) + 1
                loop_breaker = loop_breaker + 1
            end            
            -- Update the math immediately for the next hand
            self.ability.extra.current_mult = new_mult
            
            -- Tell the SPRITE to wait until the animations finish
            -- Step 1: Flip the card face down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.3, 0.3)
                    return true
                end
            }))
            
            -- Step 2: Swap the sprite in secret, then flip it back up!
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = function()
                    self.ability.extra.visual_mult = new_mult
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))
            
        end
    end

    -- 6. SPRITE UPDATE 
    function SMODS.Jokers.j_susies_feet.update(card, dt)
        if card.children.center then
            -- Look at visual_mult instead of current_mult!
            local mult_val = card.ability.extra.visual_mult or 1
            
            -- Ensure the frame is between 0 and 9
            local frame_x = math.max(0, math.min(9, mult_val - 1))
            
            -- Since your sprite sheet is horizontal (x-axis), y is always 0
            card.children.center:set_sprite_pos({ x = frame_x, y = 0 })
        end
    end
end
if config.KristinsJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_kristins_feet_sheet",
        path = "j_kristins_feet_sheet.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
        frames = 10 
    }):register()

    -- 2. CREATE JOKER
    local kristins_feet = {
        loc = {
            name = "Kristin's Feet",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "played {C:hearts}Heart{} card scored",
                "{s:0.8}Value changes every hand played{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Kristin's Feet",
        slug = "j_kristins_feet",
        ability = {
            name = "Kristin's Feet",
            set = "Joker",
            extra = {
                current_mult = 1, -- The actual math value
                visual_mult = 1   -- The value the sprite uses
            }
        },
        rarity = 1, -- Common
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_kristins_feet_sheet" -- Links to the custom atlas
    }

    init_joker(kristins_feet, true)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_kristins_feet.loc_def(card)
        return { card.ability.extra.current_mult }
    end

    -- 4. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Kristin's Feet" and not from_debuff then
            local starting_mult = math.floor(pseudorandom('kristins_init') * 10) + 1
            self.ability.extra.current_mult = starting_mult
            self.ability.extra.visual_mult = starting_mult
        end
    end

    -- 5. CALCULATION & TRIGGERS
    SMODS.Jokers.j_kristins_feet.calculate = function(self, context)
        
        -- A. Apply Mult for every Heart scored
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Hearts') and not context.other_card.debuff then
                return {
                    mult = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

     -- B. Shift Mult value after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
                
            local hands_played = G.GAME and G.GAME.hands_played or 0
-- [NEW CODE] Guarantee a different multiplier frame
            local new_mult = self.ability.extra.current_mult
            local loop_breaker = 0

            -- Keep randomizing as long as the new number matches the old number
            while new_mult == self.ability.extra.current_mult and loop_breaker < 50 do
                -- We add the loop_breaker to the seed string so it generates a new random number every loop
                new_mult = math.floor(pseudorandom('kristins_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 10) + 1
                loop_breaker = loop_breaker + 1
            end            
            -- Update the math immediately for the next hand
            self.ability.extra.current_mult = new_mult
            
            -- Tell the SPRITE to wait until the animations finish
            -- Step 1: Flip the card face down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.3, 0.3)
                    return true
                end
            }))
            
            -- Step 2: Swap the sprite in secret, then flip it back up!
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = function()
                    self.ability.extra.visual_mult = new_mult
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))
            
        end
    end

    -- 6. SPRITE UPDATE 
    function SMODS.Jokers.j_kristins_feet.update(card, dt)
        if card.children.center then
            -- Look at visual_mult instead of current_mult!
            local mult_val = card.ability.extra.visual_mult or 1
            
            -- Ensure the frame is between 0 and 9
            local frame_x = math.max(0, math.min(9, mult_val - 1))
            
            -- Since your sprite sheet is horizontal (x-axis), y is always 0
            card.children.center:set_sprite_pos({ x = frame_x, y = 0 })
        end
    end
end

if config.BrianasJoker then

    -- 1. ATLAS SETUP
    SMODS.Atlas({
        key = "j_brianas_feet_sheet",
        path = "j_brianas_feet_sheet.png",
        px = 142,
        py = 190,
        atlas_table = 'ASSET_ATLAS',
        frames = 10 
    }):register()

    -- 2. CREATE JOKER
    local brianas_feet = {
        loc = {
            name = "Briana's Feet",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "played {V:1}#2#{} card scored",
                "{s:0.8}Value and Suit changes every hand played{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Briana's Feet",
        slug = "j_brianas_feet",
        ability = {
            name = "Briana's Feet",
            set = "Joker",
            extra = {
                current_mult = 1, 
                visual_mult = 1,
                current_suit = 'Spades' -- Default, will be overwritten instantly
            }
        },
        rarity = 1, -- Common
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_brianas_feet_sheet" 
    }

    init_joker(brianas_feet, true)

    -- A simple table to fetch the localized word for the Suit and pick a random suit
    local suit_list = {'Spades', 'Hearts', 'Clubs', 'Diamonds'}
    local suit_text = { Spades = "Spade", Hearts = "Heart", Clubs = "Club", Diamonds = "Diamond" }

    -- 3. UI DISPLAY
 -- 3. UI DISPLAY
    function SMODS.Jokers.j_brianas_feet.loc_def(card)
        local current_suit = card.ability.extra.current_suit or 'Spades'
        
        -- #1# is current_mult, #2# is the text, and {V:1} looks at colours[1]
        return { 
            card.ability.extra.current_mult, 
            suit_text[current_suit] or "Suit",
            colours = { G.C.SUITS[current_suit] } -- This line prevents the crash and colors the text!
        }
    end

    -- 4. INITIALIZATION HOOK
    local original_add_to_deck = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        original_add_to_deck(self, from_debuff)
        if self.ability and self.ability.name == "Briana's Feet" and not from_debuff then
            local starting_mult = math.floor(pseudorandom('brianas_init') * 10) + 1
            local starting_suit = suit_list[math.floor(pseudorandom('brianas_s_init') * 4) + 1]
            
            self.ability.extra.current_mult = starting_mult
            self.ability.extra.visual_mult = starting_mult
            self.ability.extra.current_suit = starting_suit
        end
    end

    -- 5. CALCULATION & TRIGGERS
    SMODS.Jokers.j_brianas_feet.calculate = function(self, context)
        
        -- A. Apply Mult for every matching suit scored
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit(self.ability.extra.current_suit) and not context.other_card.debuff then
                return {
                    mult = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

     -- B. Shift Mult AND Suit after every hand played
        if context.after and not context.individual and not context.repetition and not context.blueprint then
                
            local hands_played = G.GAME and G.GAME.hands_played or 0
            
            -- GUARANTEE A DIFFERENT MULTIPLIER
            local new_mult = self.ability.extra.current_mult
            local loop_breaker = 0
            while new_mult == self.ability.extra.current_mult and loop_breaker < 20 do
                new_mult = math.floor(pseudorandom('brianas_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 10) + 1
                loop_breaker = loop_breaker + 1
            end

            -- GUARANTEE A DIFFERENT SUIT
            local new_suit = self.ability.extra.current_suit
            loop_breaker = 0
            while new_suit == self.ability.extra.current_suit and loop_breaker < 20 do
                new_suit = suit_list[math.floor(pseudorandom('brianas_suit_shift' .. tostring(hands_played) .. tostring(loop_breaker)) * 4) + 1]
                loop_breaker = loop_breaker + 1
            end
            
            -- Update math immediately
            self.ability.extra.current_mult = new_mult
            self.ability.extra.current_suit = new_suit
            
            -- Step 1: Flip down
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.3,
                func = function()
                    self:flip()
                    play_sound('card1', 1)
                    self:juice_up(0.3, 0.3)
                    return true
                end
            }))
            
            -- Step 2: Swap sprite and flip up
            G.E_MANAGER:add_event(Event({
                trigger = 'after', delay = 0.4,
                func = function()
                    self.ability.extra.visual_mult = new_mult
                    self:flip()
                    play_sound('tarot1', 1.2, 0.6)
                    self:juice_up(0.5, 0.5)
                    return true
                end
            }))
            

        end
    end

    -- 6. SPRITE UPDATE 
    function SMODS.Jokers.j_brianas_feet.update(card, dt)
        if card.children.center then
            local mult_val = card.ability.extra.visual_mult or 1
            local frame_x = math.max(0, math.min(9, mult_val - 1))
            card.children.center:set_sprite_pos({ x = frame_x, y = 0 })
        end
    end
end

if config.lunarEclipseJoker then

    local frames_lunar_count = 472 -- Total animation frames

    -- Helper to register sprite sheets
    local function register_lunar_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)

        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)

            SMODS.Atlas({
                key = "j_lunar_eclipse_sheet_" .. sheet_idx,
                path = "animations/j_lunar_eclipse_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end

    -- Register sheets
    register_lunar_sheets(frames_lunar_count)

    local lunar_eclipse = SMODS.Joker:new(
        "Lunar Eclipse",
        "j_lunar_eclipse",
        {
            extra = {
                odds = 4, -- 1 in 4 chance
                current_frame = 1,
                max_frames = frames_lunar_count,
                frame_timer = 0,
                frame_delay = 0.016
            }
        },
        { x = 0, y = 0 },
        {
            name = "Lunar Eclipse",
            text = {
                "{C:green}#1# in #2#{} chance to make",
                "the {C:attention}first scored card{} of",
                "the {C:attention}first hand{} played",
                "{C:dark_edition}Negative{}",
                "{C:inactive}(If no edition){}"
            }
        },
        2, -- Uncommon Rarity
        6, -- Cost
        true,
        true,
        true,
        true
    )

    lunar_eclipse.atlas = "j_lunar_eclipse_sheet_1"
    lunar_eclipse:register()

    function SMODS.Jokers.j_lunar_eclipse.loc_def(card)
        return {G.GAME.probabilities.normal, card.ability.extra.odds}
    end

    -- Calculation Logic
    SMODS.Jokers.j_lunar_eclipse.calculate = function(self, context)
        if context.individual and context.cardarea == G.play then
            if G.GAME.current_round.hands_played == 0 then
                if context.other_card == context.scoring_hand[1] then
                    if not context.other_card.edition then
                        if pseudorandom('lunar_eclipse') < G.GAME.probabilities.normal / self.ability.extra.odds then

                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    context.scoring_hand[1]:set_edition({negative = true}, true)
                                    context.scoring_hand[1]:juice_up(0.5, 0.5)
                                    return true
                                end
                            }))

                            return {
                                message = localize('k_upgrade_ex'),
                                colour = G.C.DARK_EDITION,
                                card = self
                            }
                        end
                    end
                end
            end
        end
    end

    -- Animation update hook
-- 4. Update Loop (Animation + Ghost Load Logic)

end

if config.callousSoleJoker then
    local callous_sole = {
        loc = {
            name = "Callous Sole",
            text = {
                "Discarded cards permanently gain",
                "{C:chips}+#1#{} Chips plus their",
                "current {C:attention}permanent bonus{}",
                "{C:inactive}(Ex: +20 becomes +45){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Callous Sole",
        slug = "j_callous_sole",
        ability = {
            name = "Callous Sole",
            set = "Joker",
            extra = {
                base_gain = 5
            }
        },
        rarity = 3, -- Rare, as this scales exponentially
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false, -- Disable blueprint to prevent game-breaking scaling
        eternal_compat = true,
        
    }

    init_joker(callous_sole)

    -- Static definition for the description
    function SMODS.Jokers.j_callous_sole.loc_def(card)
        return { card.ability.extra.base_gain }
    end

    -- Logic: Trigger on discard, apply (Base + Current) to Current
    SMODS.Jokers.j_callous_sole.calculate = function(self, context)
        -- Triggers for every individual card discarded
        if context.discard and not context.blueprint and context.other_card then
            local card = context.other_card
            
            -- Calculate the specific gain for this card
            local current_bonus = card.ability.perma_bonus or 0
            local gain_amount = self.ability.extra.base_gain + current_bonus
            
            -- Apply the new bonus
            card.ability.perma_bonus = current_bonus + gain_amount
            
            -- Visual effects
            

            return {
                message = "+" .. gain_amount,
                colour = G.C.CHIPS,
                card = self
            }
        end
    end
end







if config.partnerJoker then
    -- Create Joker
    local partner = {
        loc = {
            name = "Partner",
            text = {
                "When {C:attention}Blind{} is selected,",
                "create a random",
                "{C:green}Uncommon{C:attention} Joker{}",
                "{C:inactive}(Must have room){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Partner",
        slug = "j_partner",
        ability = {
            name = "Partner",
            set = "Joker",
            extra = {
                
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(partner)

    -- Set local variables
    function SMODS.Jokers.j_partner.loc_def(card)
        return {}
    end

    -- Calculate effect
    SMODS.Jokers.j_partner.calculate = function(self, context)
        -- Trigger when a blind is selected
        if context.setting_blind and not self.getting_sliced then
            
            -- Check if there is room for another Joker
            if #G.jokers.cards < G.jokers.config.card_limit then
                
                G.E_MANAGER:add_event(Event({
                    func = function()
                        -- 1. Filter for Uncommon Jokers
                        local uncommon_jokers = {}
                        for k, v in pairs(G.P_CENTER_POOLS.Joker) do
                            -- Check if it is Uncommon (rarity 2), unlocked, and not this card
                            if v.rarity == 2 and (not v.unlock_condition or v.unlocked) and v.key ~= "j_partner" then
                                table.insert(uncommon_jokers, v.key)
                            end
                        end
                        
                        -- 2. Select a random Uncommon Joker
                        if #uncommon_jokers > 0 then
                            local selected_joker = pseudorandom_element(uncommon_jokers, pseudoseed("partner_create"))
                            
                            -- 3. Create the card
                            local card = create_card("Joker", G.jokers, nil, nil, nil, nil, selected_joker, "partner")
                            card:add_to_deck()
                            G.jokers:emplace(card)
                            card:start_materialize()
                            
                            -- Visual feedback
                            card:juice_up(0.5, 0.5)
                            play_sound('timpani')
                        end
                        
                        return true
                    end
                }))

                -- Show "Created!" message on the Partner Joker
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_plus_joker"),
                    colour = G.C.GREEN
                })
            else
                -- Show "No Space" message if full
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_no_space_ex"),
                    colour = G.C.RED
                })
            end
        end
    end
end



if config.soleAscensionTarot then
    local sole_ascension = {
        loc = {
            name = "Sole Ascension",
            text = {
                "{C:red}Destroys{} the {C:attention}leftmost{}",
                "{C:blue}Common{} or {C:green}Uncommon{} Joker,",
                "create a random Joker",
                "of {C:attention}1{} rarity higher",
                "{s:0.8,C:inactive}(Max Rarity {C:rare,s:0.8}Rare{C:inactive})"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sole Ascension",
        slug = "c_sole_ascension",
        config = { extra = {} },
        cost = 3,
        cost_mult = 1.0,
        effect = "Upgrade Joker",
        consumeable = true,
        discovered = true,
    }

    -- Initialize the Tarot
    init_tarot(sole_ascension)

    -- Localization
    function SMODS.Tarots.c_sole_ascension.loc_def(card)
        return {}
    end

    -- Condition: Check if the LEFTMOST joker is valid (Common/Uncommon and Not Eternal)
    function SMODS.Tarots.c_sole_ascension.can_use(card)
        if G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
            local target = G.jokers.cards[1] -- Leftmost Joker
            if target then
                -- Check eligibility: Not Eternal AND (Rarity is 1 or 2)
                if not target.ability.eternal and target.config.center.rarity and (target.config.center.rarity == 1 or target.config.center.rarity == 2) then
                    return true
                end
            end
        end
        return false
    end

    -- Usage Logic
    function SMODS.Tarots.c_sole_ascension.use(card, area, copier)
        -- 1. Identify the target (Leftmost Joker)
        local target_joker = nil
        if G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
            target_joker = G.jokers.cards[1]
        end

        -- 2. Validation (Ensure it didn't change state/position between click and execution)
        if target_joker and not target_joker.ability.eternal and target_joker.config.center.rarity and (target_joker.config.center.rarity == 1 or target_joker.config.center.rarity == 2) then
            
            local current_rarity = target_joker.config.center.rarity or 1
            
            -- Calculate next rarity (1->2 or 2->3)
            local next_rarity = current_rarity + 1
            
            -- 3. Destroy Animation
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.3, 0.5)
                    target_joker:start_dissolve()
                    return true
                end
            }))

            -- 4. Create New Joker
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.5, -- Wait for dissolve to clear the slot
                func = function()
                    -- Find valid jokers for the next rarity tier
                    local pool = {}
                    -- Scan P_CENTERS for jokers matching the target rarity
                    for k, v in pairs(G.P_CENTERS) do
                        if v.set == 'Joker' and v.rarity == next_rarity and v.unlocked then
                            table.insert(pool, k)
                        end
                    end

                    -- If pool is found, pick one and spawn
                    if #pool > 0 then
                        local new_joker_key = pseudorandom_element(pool, pseudoseed('sole_ascension_spawn'))
                        
                        local new_card = create_card("Joker", G.jokers, nil, nil, nil, nil, new_joker_key)
                        new_card:add_to_deck()
                        G.jokers:emplace(new_card)
                        new_card:start_materialize()
                        new_card:juice_up(0.5, 0.5)

                        play_sound('timpani')
                        
                        card_eval_status_text(new_card, "extra", nil, nil, nil, {
                            message = "Ascended!",
                            colour = G.C.PURPLE
                        })
                    else
                        -- Fallback if no joker of that rarity exists (rare edge case)
                        card_eval_status_text(card, "extra", nil, nil, nil, {
                            message = localize("k_nope_ex"),
                            colour = G.C.RED
                        })
                    end
                    return true
                end
            }))
        else
             -- Fallback if conditions changed between check and use
             card_eval_status_text(card, "extra", nil, nil, nil, {
                message = localize("k_nope_ex"),
                colour = G.C.RED
            })
        end
    end
end


if config.frostbittenJoker then
    local frostbitten = {
        loc = {
            name = "Less than her",
            text = {
                "The {C:attention}leftmost{} other Joker",
                "becomes {C:dark_edition}Negative{}",
                "and {C:attention}Perishable{}",
                "{C:inactive}(Currently: {C:attention}#1#{C:inactive})"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Frostbitten Foot",
        slug = "j_frostbitten",
        ability = {
            name = "Frostbitten Foot",
            set = "Joker",
            extra = {}
        },
        rarity = 3, -- Rare
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(frostbitten)

    -- Dynamic Loc Def to show the player exactly which card will be frozen
    function SMODS.Jokers.j_frostbitten.loc_def(card)
        local target_name = "None"
        if G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
            -- Identify the joker in the first slot
            local first_joker = G.jokers.cards[1]
            
            -- Only show name if the first joker is NOT this card
            if first_joker and first_joker ~= card then
                target_name = first_joker.ability.name
            end
        end
        return { target_name }
    end

    -- Switched from .update to .calculate so it only triggers when owned and scoring
    SMODS.Jokers.j_frostbitten.calculate = function(self, context)
        -- Trigger during the main scoring phase when this Joker is owned
        if context.joker_main and G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
            
            -- Always grab the very first joker in the list (Far Left)
            local target = G.jokers.cards[1]

            -- Ensure target exists, is NOT self, and is a valid active card
            if target and target ~= self and not target.getting_sliced then
            
                -- Check if the target is ALREADY fully processed
                local is_negative = target.edition and target.edition.negative
                local is_perishable = target.ability.perishable

                -- If the target is NOT already in the desired state, trigger transformation
                if not is_negative or not is_perishable then
                    
                    -- Play sound and visual juices
                    play_sound('tarot1')
                    self:juice_up(0.5, 0.5)
                    target:juice_up(1, 0.5)

                    -- 1. Make Negative
                    if not is_negative then
                        -- Instantly apply negative edition
                        target:set_edition({negative = true}, true)
                    end

                    -- 2. Make Perishable
                    if not target.ability.perishable then
                        target.ability.perishable = true
                        target.ability.perish_tally = G.GAME.perishable_rounds or 5
                    end

                    -- Feedback Message
                    return {
                        message = "Frozen!",
                        colour = G.C.BLUE,
                        card = self
                    }
                end
            end
        end
    end
end
-- Add to your config table at the top of Painted.lua
-- clearTopCoatJoker = true,

-- ... Inside your Joker loading section ...
-- Add this to the local config = { ... } at the top of Painted.lua

----------------------------------------------
------------ NEW JOKER CODE ------------------
----------------------------------------------

if config.soleContractSpectral then
    -- 1. Define the Spectral Card
    local sole_contract = {
        loc = {
            name = "Sole Contract",
            text = {
                "Create a random {C:legendary}Legendary{} Joker",
                "It is {C:attention}Eternal{} and {C:attention}Rental{}",
                "{C:inactive}(Must have room){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sole Contract",
        slug = "c_sole_contract",
        config = { extra = {} },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    -- Initialize using the Painted.lua helper
    init_spectral(sole_contract)

    -- Localization definition
    function SMODS.Spectrals.c_sole_contract.loc_def(card)
        return {}
    end

    -- 2. Usability Condition
    function SMODS.Spectrals.c_sole_contract.can_use(card)
        -- Must have room for at least 1 Joker
        if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
            return true
        end
        return false
    end

    -- 3. The Execution Logic
    function SMODS.Spectrals.c_sole_contract.use(card, area, copier)
        -- Initial animation/sound for using the spectral
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        -- Create the Joker
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                -- create_card parameters: type, area, legendary, rarity, skip_materialize, soulable, forced_key, seed
                -- (true = Force Legendary creation, 4 = Legendary Rarity)
                local new_card = create_card('Joker', G.jokers, true, 4, nil, nil, nil, 'sole_contract_create')
                
                -- Apply Modifiers (Safeguard check for native Balatro functions vs direct property assignment)
                if new_card.set_eternal then
                    new_card:set_eternal(true)
                else
                    new_card.ability.eternal = true
                end
                
                if new_card.set_rental then
                    new_card:set_rental(true)
                else
                    new_card.ability.rental = true
                end
                
                -- Add to the player's Joker area
                new_card:add_to_deck()
                G.jokers:emplace(new_card)
                new_card:start_materialize()
                
                -- Visual impact
                new_card:juice_up(1, 1)
                return true
            end
        }))
    end
end

if config.seismicStompSpectral then
    -- 1. Define the Spectral Card
    local seismic_stomp = {
        loc = {
            name = "Seismic Stomp",
            text = {
                "{C:attention}Destroys{} all cards in your {C:attention}Deck{}",
                "matching the {C:attention}Rank{} of selected card.",
                "Selected card gains {C:chips}+#1#{} Chips",
                "per card destroyed.",
                "{C:inactive}(Does not affect Hand or Discard){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Seismic Stomp",
        slug = "c_seismic_stomp",
        config = {
            extra = 15, -- Chips per card destroyed
            max_highlighted = 1,
            min_highlighted = 1
        },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(seismic_stomp)

    -- Localization
    function SMODS.Spectrals.c_seismic_stomp.loc_def(card)
        if card.ability then
            return { card.ability.extra }
        else
            return { card.config.extra }
        end
    end

    -- Logic: Can use if 1 card selected
    function SMODS.Spectrals.c_seismic_stomp.can_use(card)
        return G.hand and #G.hand.highlighted == 1
    end

    -- 2. The Custom Animation Method
    -- UPDATED: Now accepts 'spectral_card' as the first argument
   -- 2. The Custom Animation Method
   G.FUNCS.animate_seismic_stomp = function(spectral_card, stomper_card, victim_cards)
        
    -- Dissolve the Spectral Card immediately so it doesn't block the view
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            spectral_card:start_dissolve()
            return true
        end
    }))

    -- 1. Setup: Move Stomper to center
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            stomper_card:juice_up(1, 1)
            play_sound('timpani', 0.8, 0.6)
            return true
        end
    }))

    -- 2. Create visual copies of victims appearing under the stomper
    local visual_victims = {}
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.5,
        func = function()
            for _, v in ipairs(victim_cards) do
                -- Create a visual only copy
                local _card = copy_card(v, nil, nil, nil, true)
                _card.T.x = G.ROOM.T.w/2 - G.CARD_W/2 + (math.random() - 0.5)
                _card.T.y = G.ROOM.T.h/2 - G.CARD_H/2 + 0.5
                _card:start_materialize()
                table.insert(visual_victims, _card)
                -- Add to draw hash manually since they aren't in an area
                table.insert(G.I.CARD, _card)
            end
            return true
        end
    }))

    -- 3. THE STOMP: Scale up stomper, then slam down
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.8,
        func = function()
            -- Scale Up
            stomper_card.T.scale = 1.5
            return true
        end
    }))

    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            -- Slam Down
            stomper_card.T.scale = 1
            stomper_card:juice_up(1, 1)
            G.ROOM.jiggle = G.ROOM.jiggle + 5 -- Massive screen shake
            
            -- Create Impact Particles (Smoke/Dust)
            -- We create a particle system attached to the card
            local impact_particles = Particles(0, 0, 0, 0, {
                timer = 0.05,     -- frequency of particle spawn
                scale = 2.5,      -- size of particles
                speed = 4,        -- how fast they fly out
                lifespan = 0.8,   -- how long they last
                attach = stomper_card, -- attach to the stomper card
                colours = {G.C.WHITE, G.C.GREY, G.C.L_BLACK}, -- Smoke colors
                fill = true       -- solid circles
            })
            
            -- Make them fade out quickly
            impact_particles:fade(0.6)

            -- Send victims flying
            for _, v in ipairs(visual_victims) do
                v.ability.forced_selection = nil
                
                -- Safe velocity table with scale included
                v.velocity = {
                    x = (math.random() - 0.5) * 30,
                    y = (math.random() - 0.5) * 30,
                    r = (math.random() - 0.5) * 20,
                    scale = 0 
                }
                
                v.rotation_axis = {
                    x = (math.random() - 0.5),
                    y = (math.random() - 0.5),
                    z = (math.random() - 0.5)
                }
                -- Make them spin rapidly
                v.T.r = math.random() * 6
                
                -- Schedule cleanup of visual copies
                v:start_dissolve(nil, nil, 0.5)
            end
            return true
        end
    }))
end

    -- 3. The Use Effect
    function SMODS.Spectrals.c_seismic_stomp.use(card, area, copier)
        local stomper = G.hand.highlighted[1]
        local rank_to_destroy = stomper:get_id()
        local destroyed_cards = {}
        local count = 0

        -- Identify targets in DECK (G.deck.cards)
        -- Iterate backwards to safely remove
        for i = #G.deck.cards, 1, -1 do
            local target = G.deck.cards[i]
            if target:get_id() == rank_to_destroy then
                table.insert(destroyed_cards, target)
                -- Actually remove from deck logic
                target:remove()
                count = count + 1
            end
        end

        if count > 0 then
            -- Trigger the custom animation
            -- UPDATED: Pass 'card' (the spectral card) as first arg
            G.FUNCS.animate_seismic_stomp(card, stomper, destroyed_cards)

            -- Apply Bonus to Stomper
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 1.5, -- Wait for stomp animation to finish
                func = function()
                    local total_bonus = count * card.ability.extra
                    stomper.ability.perma_bonus = (stomper.ability.perma_bonus or 0) + total_bonus
                    
                    attention_text({
                        text = "+"..total_bonus.." Chips",
                        scale = 1.0, 
                        hold = 1.4,
                        major = stomper,
                        backdrop_colour = G.C.CHIPS,
                        align = 'bm',
                        offset = {x = 0, y = 0},
                        silent = true
                    })
                    play_sound('chips2')
                    stomper:juice_up(0.6, 0.6)
                    return true
                end
            }))

            -- Notify Jokers of mass destruction
            for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed_cards})
            end
        else
            -- No cards found in deck (rare case if you holding the last one)
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_no_space_ex')})
        end
    end
end

--[[

PASTE THE FOLLOWING CODE INTO YOUR `Painted.lua` FILE

Instructions:
1. Add `thePedicuristTarot = true,` to your `config` table at the top of the file.
2. Add the `if config.thePedicuristTarot then ... end` block with your other joker/card definitions.
   (This replaces any previous versions of 'The Pedicurist'.)

--]]
if config.momentumSpectral then
    -- Create Spectral Card
    local momentum_run = {
        loc = {
            name = "Momentum",
            text = {
                "Add a {C:red}Red Seal{} to",
                "all cards in hand,",
                "{C:red}-1{} Hand Size"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Momentum",
        slug = "c_momentum",
        config = {
            extra = 1 -- Hand size reduction amount
        },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(momentum_run)

    -- Localization definition
    function SMODS.Spectrals.c_momentum.loc_def(card)
        return {}
    end

    -- Can only use if there are cards in hand to modify
    function SMODS.Spectrals.c_momentum.can_use(card)
        if G.hand and #G.hand.cards > 0 then
            return true
        end
        return false
    end

    -- Spectral effect
    function SMODS.Spectrals.c_momentum.use(card, area, copier)
        local used_tarot = copier or card
        
        -- 1. Audio/Visual startup
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            used_tarot:juice_up(0.3, 0.5)
            return true end }))

        -- 2. Flip all cards in hand
        for i=1, #G.hand.cards do
            local percent = 1.15 - (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() 
                G.hand.cards[i]:flip()
                play_sound('card1', percent)
                G.hand.cards[i]:juice_up(0.3, 0.3)
                return true end }))
        end
        delay(0.2)

        -- 3. Apply Red Seal to all cards
        for i=1, #G.hand.cards do
            G.E_MANAGER:add_event(Event({func = function()
                local card = G.hand.cards[i]
                card:set_seal('Red', true, true)
                return true end }))
        end  

        -- 4. Reduce Hand Size
        G.hand:change_size(-1)

        -- 5. Flip cards back over
        for i=1, #G.hand.cards do
            local percent = 0.85 + (i-0.999)/(#G.hand.cards-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() 
                G.hand.cards[i]:flip()
                play_sound('tarot2', percent, 0.6)
                G.hand.cards[i]:juice_up(0.3, 0.3)
                return true end }))
        end

        return true
    end
end


if config.prestigiousLoserJoker then
    
    -- 1. ANIMATION SETUP
    local frames_loser_count = 2267 -- Set this to your total frame count
    local frames_per_sheet = 50
    
    local function register_loser_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_prestigious_loser_sheet_" .. sheet_idx,
                path = "animations/joker/j_prestigious_loser_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    register_loser_sheets(frames_loser_count)
    
    -- 2. JOKER DEFINITION
    local prestigious_loser = SMODS.Joker:new(
        "Prestigious Loser", 
        "j_prestigious_loser", 
        { 
            extra = { 
                base = 1.2, -- The exponential base
                
                -- Animation Variables
                current_frame = 1,
                max_frames = frames_loser_count,
                frame_timer = 0,
                frame_delay = 0.016, 
                last_real_time = nil
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Prestigious Loser",
            text = {
                "Hand levels give {X:mult,C:white} X#1# {} Mult",
                "each {C:attention}instead{} of flat {C:mult}Mult{}",
            }
        },
        3, -- Rare
        8, -- Cost
        true, true, true, true, nil,
        "j_prestigious_loser_sheet_1"
    )
    
    prestigious_loser:register()

    -- 3. UI DISPLAY (Tooltip only)
    -- This calculates a preview based on the 'Most Played Hand' for the collection menu/shop
    function SMODS.Jokers.j_prestigious_loser.loc_def(card)
        local level = 1
        
        -- Fallback UI logic: Try to show stats for the most played hand if available
        if G.GAME and G.GAME.current_round and G.GAME.current_round.most_played_poker_hand then
            local best_hand = G.GAME.current_round.most_played_poker_hand
            if G.GAME.hands[best_hand] then
                level = G.GAME.hands[best_hand].level
            end
        end

        local ui_x_mult = card.ability.extra.base ^ level
        return { card.ability.extra.base, string.format("%.2f", ui_x_mult) }
    end
    
    -- 4. SCORING CALCULATION (CRITICAL FIX)
    -- Explicitly uses context.scoring_name to determine the Played Hand
    SMODS.Jokers.j_prestigious_loser.calculate = function(self, context)
        -- Trigger strictly on Main Scoring Phase
        if context.joker_main then
            local hand_name = context.scoring_name -- e.g., "Flush", "Pair"
            
            -- Ensure we have a valid hand name to look up
            if hand_name and G.GAME.hands[hand_name] then
                local hand_stats = G.GAME.hands[hand_name]
                local level = hand_stats.level
                local mult_per_level = hand_stats.l_mult

                -- A. Calculate Exponential XMult based on THIS hand's level
                -- Formula: 1.2 ^ Level
                local x_mult = self.ability.extra.base ^ level

                -- B. Calculate the Flat Mult to remove
                -- We remove the flat mult usually gained by levels: (Level - 1) * Mult_Per_Level
                local flat_remove = math.max(0, (level - 1) * mult_per_level)

                if x_mult > 1 then
                    return {
                        message = localize{type='variable',key='a_xmult',vars={string.format("%.2f", x_mult)}},
                        Xmult_mod = x_mult,
                        mult_mod = -flat_remove, -- Subtracts the flat mult
                        card = self
                    }
                end
            end
        end
    end
    
    -- 5. ANIMATION LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        if self.ability.name == "Prestigious Loser" and self.added_to_deck then
            local current_real_time = love.timer.getTime()
            
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
    
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                
                -- Sprite Sheet Swapping
                local frame_num = self.ability.extra.current_frame
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_prestigious_loser_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end

-- Add this to your config table at the top of the file
-- soleSurvivorSpectral = true,

-- Add this block inside SMODS.INIT.Painted()
if config.soleSurvivorSpectral then
    local sole_survivor = {
        loc = {
            name = "Sole Survivor",
            text = {
                "Select {C:attention}1{} card.",
                "{C:red}Destroy{} all other cards in hand.",
                "Selected card gains {C:chips}+#1#{} Chips",
                "for each card destroyed."
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sole Survivor",
        slug = "c_sole_survivor",
        config = {
            extra = 20,           -- Chips per card destroyed
            max_highlighted = 1   -- Must select exactly 1
        },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(sole_survivor)

    -- Custom function to handle the "Absorption" logic
    G.FUNCS.sole_absorb = function(survivor, victims, chip_gain_per)
        local total_gain = 0
        
        -- 1. Calculate total gain
        -- We verify chip_gain_per is a number here to prevent crashes if data is missing
        local gain = type(chip_gain_per) == 'number' and chip_gain_per or 0
        
        for _, v in ipairs(victims) do
            total_gain = total_gain + gain
        end

        if total_gain > 0 then
            -- 2. Animation: Survivor pulses and "eats" the stats
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    survivor:juice_up(1.0, 1.0) 
                    survivor.ability.perma_bonus = (survivor.ability.perma_bonus or 0) + total_gain
                    
                    -- Visual text for the gain
                    card_eval_status_text(survivor, "extra", nil, nil, nil, {
                        message = "+"..total_gain.." Chips",
                        colour = G.C.CHIPS,
                        instant = true
                    })
                    play_sound('chips1', 1.2)
                    return true
                end
            }))

            -- 3. Destruction Loop
            for i = 1, #victims do
                local card = victims[i]
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1, 
                    func = function()
                        if card.ability.name == 'Glass Card' then 
                            card:shatter()
                        else
                            card:start_dissolve()
                        end
                        return true
                    end
                }))
            end

            -- 4. Joker Calculation Update (for effects that trigger on destroy)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.5,
                func = function()
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = victims})
                    end
                    return true
                end
            }))
        end
    end

    function SMODS.Spectrals.c_sole_survivor.loc_def(card)
        if card.ability then
            return { card.ability.extra }
        else
            return { card.config.extra }
        end
    end

    function SMODS.Spectrals.c_sole_survivor.can_use(card)
        -- Needs 1 selected card, and at least 1 other card in hand to destroy
        if G.hand and #G.hand.highlighted == 1 and #G.hand.cards > 1 then
            return true
        end
        return false
    end

    function SMODS.Spectrals.c_sole_survivor.use(card, area, copier)
        local survivor = G.hand.highlighted[1]
        local victims = {}

        -- Identify victims (everyone in hand who ISN'T the survivor)
        for k, v in ipairs(G.hand.cards) do
            if v ~= survivor then
                table.insert(victims, v)
            end
        end

        -- Use the custom function defined above
        if #victims > 0 then
            -- FIX: Accessed card.ability.extra instead of card.config.extra
            G.FUNCS.sole_absorb(survivor, victims, card.ability.extra)
        end
        
        -- Standard Use Animation
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
    end
end




if config.stompSpectral then
    -- Create Spectral Card
    local stomp_run = {
        loc = {
            name = "Stomp",
            text = {
                "{C:red}Destroys{} selected card.",
                "All other cards in hand",
                "gain {C:chips}+#1#{} Chips",
                "{C:attention}permanently{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Stomp",
        slug = "c_stomp",
        
        config = {
            extra = 20,          -- Chips added per card
            max_highlighted = 1  -- Requires exactly 1 card selected
        },
        cost = 4,
        consumeable = true,
        discovered = true,
    }

    init_spectral(stomp_run)

    -- Localization definition
    function SMODS.Spectrals.c_stomp.loc_def(card)
        if card.ability then
            return { card.ability.extra }
        else
            return { card.config.extra }
        end
    end

    -- When this Spectral can be used
    function SMODS.Spectrals.c_stomp.can_use(card)
        if G.hand.highlighted and #G.hand.highlighted == 1 then
            return true
        end
        return false
    end

    -- Spectral effect
    function SMODS.Spectrals.c_stomp.use(card, area, copier)
        local target = G.hand.highlighted[1]
        -- FIX: Use card.ability.extra instead of card.config.extra
        local bonus = card.ability.extra 
        local used_tarot = copier or card
        -- 1) Juice the consumable card being used
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        -- 2) Apply permanent bonus to all OTHER cards in hand
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                local beneficiaries = 0
                for k, v in ipairs(G.hand.cards) do
                    -- Check if card is not the target and not currently being destroyed
                    if v ~= target and not v.REMOVED and not v.getting_sliced then
                            -- Add to perma_bonus field
                            v.ability.perma_bonus = (v.ability.perma_bonus or 0) + bonus
                            v:juice_up(0.3, 0.3)
                            beneficiaries = beneficiaries + 1
                    end
                end
                
                if beneficiaries > 0 then 

                    attention_text({
                        text = "+"..bonus.." Chips",
                        scale = 1.3, 
                        hold = 1.4,
                        major = used_tarot,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('chips1', 0.76, 0.4);return true end}))

    
                end
                return true
            end
        }))

        -- 3) Destroy the selected card
        if target then 
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function() 
                    if target.ability and target.ability.name == 'Glass Card' then 
                        target:shatter()
                    else
                        target:start_dissolve()
                    end
                    -- Note: passed 'target' inside a table {} because 'removed' expects a list
                    for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = {target}})
                    end
                    return true 
                end
            }))
        end

        return true
    end
end


if config.repeatedFitJoker then
    local repeated_fit = {
        loc = {
            name = "Repeated Fit",
            text = {
                "If {C:attention}first hand{} of round",
                "is a single card, add a",
                "{C:attention}random Seal{} to it.",
                "{C:inactive}(Must have no Seal){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Repeated Fit",
        slug = "j_repeated_fit",
        ability = {
            name = "Repeated Fit",
            set = "Joker",
            extra = {}
        },
        rarity = 3, 
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false, 
        eternal_compat = true,
    }

    init_joker(repeated_fit)

    function SMODS.Jokers.j_repeated_fit.loc_def(card)
        return {}
    end

    SMODS.Jokers.j_repeated_fit.calculate = function(self, context)
        -- Trigger on 'before' context to modify the card before scoring triggers
        if context.before and not context.blueprint then
            -- Condition 1: First hand of the round
            if G.GAME.current_round.hands_played == 0 then
                
                -- Condition 2: Exactly one card played
                if context.full_hand and #context.full_hand == 1 then
                    local played_card = context.full_hand[1]
                    
                    -- Condition 3: Card must not have a seal
                    if not played_card.seal then
                        
                        -- Define potential seals
                        local seal_types = {"Red", "Blue", "Gold", "Purple"}
                        -- Pick a random one using the game's pseudorandom system
                        local chosen_seal = pseudorandom_element(seal_types, pseudoseed("repeated_fit"))

                        -- Effect: Apply Random Seal
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                play_sound('gold_seal', 1.1) -- Audio feedback
                                played_card:set_seal(chosen_seal, true, true)
                                played_card:juice_up(0.5, 0.5)
                                return true
                            end
                        }))
                        
                        -- UI Feedback (Dynamic message based on seal color)
                        return {
                            message = chosen_seal .. " Seal!",
                            colour = (chosen_seal == 'Red' and G.C.RED or 
                                      chosen_seal == 'Blue' and G.C.BLUE or 
                                      chosen_seal == 'Gold' and G.C.GOLD or 
                                      chosen_seal == 'Purple' and G.C.PURPLE or G.C.CHIPS),
                            card = self
                        }
                    end
                end
            end
        end
    end
end


-- 2. Add this block with your other card definitions
if config.thePedicuristTarot then
    -- Create Tarot
    local the_pedicurist = {
        loc = {
            name = "The Pedicurist",
            text = {
                "{C:green}#2# in #1#{} chance to make",
                "a random Joker card",
                "{C:dark_edition}Negative{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Pedicurist", -- Internal name for ability check
        slug = "c_feet_pedicurist",
        config = {
            extra = {
                odds = 4
            },

        },
        cost = 4,
        unlocked = true,
        discovered = true,
    }

    -- Initialize Tarot
    init_tarot(the_pedicurist)

    -- Set local variables
    function SMODS.Tarots.c_feet_pedicurist.loc_def(card)
        return { card.config.extra.odds, "" .. (G.GAME and G.GAME.probabilities.normal or 1) }
    end

    -- Define conditions for usage
    function SMODS.Tarots.c_feet_pedicurist.can_use(card)
        -- Can be used if there is at least one Joker that is not eternal and not already Negative.
        if G.jokers and G.jokers.cards then
            for i = 1, #G.jokers.cards do
                local joker = G.jokers.cards[i]
                if (not joker.edition or not joker.edition.negative) then
                    return true -- Found a valid target
                end
            end
        end
        return false -- No valid targets found
    end

    -- Define the card's effect when used
    function SMODS.Tarots.c_feet_pedicurist.use(card, area, copier)
        local eligible_jokers = {}
        for i = 1, #G.jokers.cards do
            local joker = G.jokers.cards[i]
            if  (not joker.edition or not joker.edition.negative) then
                table.insert(eligible_jokers, joker)
            end
        end

        -- This should always be true because of can_use, but it's safe to check
        if #eligible_jokers > 0 then
            if pseudorandom('pedicurist') < G.GAME.probabilities.normal / card.ability.consumeable.extra.odds then
                local chosen_joker = pseudorandom_element(eligible_jokers, pseudoseed('pedicurist_choice'))
                
                play_sound('tarot1')

                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    chosen_joker:set_edition({negative = true}, true)
                    card:juice_up(0.3, 0.5)
                    return true 
                end }))
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
        -- The SMODS framework handles card dissolution automatically after .use completes
    end
end
----Tarots
if config.lowerRankTarot then
    local lower_rank_tarot = {
        loc = {
            name = "Humble Steps",
            text = {
                "Lowers rank of",
                "up to {C:attention}2{} selected",
                "cards by {C:attention}1{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Humble Steps",
        slug = "c_feet_humble_steps",
        config = {
            max_highlighted = 2,
            extra = {
            }
        },
        cost = 3,
        cost_mult = 1,
        discovered = true,
    }

    -- Initialize the Tarot Card
    init_tarot(lower_rank_tarot)
    
    -- Register animation frames


    -- Define localization variables
    function SMODS.Tarots.c_feet_humble_steps.loc_def(card)
        return {}
    end

    -- Define conditions for usage
    function SMODS.Tarots.c_feet_humble_steps.can_use(card)
        -- Can use if 1 or 2 cards are highlighted in hand
        return G.hand and (#G.hand.highlighted >= 1 and #G.hand.highlighted <= 2)
    end

    -- Define the rank lowering logic (preserved for reference but not used in new implementation)
    
    function SMODS.Tarots.c_feet_humble_steps.use(card, area, copier)
        

        -- Capture highlighted cards
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            card:juice_up(0.3, 0.5)
            return true end }))
        for i=1, #G.hand.highlighted do
            local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end

        delay(0.2)

        -- Transform immediately
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()

                local cardused = G.hand.highlighted[i]
                local suit_prefix = string.sub(cardused.base.suit, 1, 1)..'_'
                local rank_suffix = math.min(cardused.base.id-1, 14)
                if cardused.base.id == 2 then
                    rank_suffix = 14  -- 2 becomes A
                elseif cardused.base.id == 14 then
                    rank_suffix = 13  -- A becomes K  
                end
                if rank_suffix < 10 then rank_suffix = tostring(rank_suffix)
                elseif rank_suffix == 10 then rank_suffix = 'T'
                elseif rank_suffix == 11 then rank_suffix = 'J'
                elseif rank_suffix == 12 then rank_suffix = 'Q'
                elseif rank_suffix == 13 then rank_suffix = 'K'
                elseif rank_suffix == 14 then rank_suffix = 'A'
                end
                cardused:set_base(G.P_CARDS[suit_prefix..rank_suffix])
            return true end }))
        end  
        for i=1, #G.hand.highlighted do
            local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('tarot2', percent, 0.6);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
        delay(0.5)
    end
    -- Animation update function
 
end
-- Define the new Tarot Card
if config.luckyduplicate then
    local lucky_duplicate = {
        loc = {
            name = "Lucky Duplicate",
            text = {
                "{C:green}#2# in #1#{} chance to create",
                "a copy of a random",
                "{C:attention}Joker{} you own",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Lucky Duplicate",
        slug = "c_lucky_duplicate",
        config = { extra = {
            odds = 3,
        }},
        cost = 3,
        cost_mult = 1,
        discovered = true,
    }
    
    -- Initialize the Tarot Card
    init_tarot(lucky_duplicate)

    -- Define localization variables for the card UI
    function SMODS.Tarots.c_lucky_duplicate.loc_def(card)
        return { card.config.extra.odds, "" .. (G.GAME and G.GAME.probabilities.normal or 1) }
    end
    
    -- Define conditions for usage
    function SMODS.Tarots.c_lucky_duplicate.can_use(card)
        -- Check if there are any jokers and room for another joker
        return #G.jokers.cards > 0 and G.jokers.config.card_limit > #G.jokers.cards
    end
    
    -- Define the Tarot Card's effect
    function SMODS.Tarots.c_lucky_duplicate.use(card, area, copier)
        -- Check if there are jokers to duplicate and space for new joker
        if #G.jokers.cards > 0 and G.jokers.config.card_limit > #G.jokers.cards then
            
            -- 1 in 6 chance to duplicate
            if pseudorandom("lucky_duplicate") < G.GAME.probabilities.normal / 4 then
                
                -- FIX START: Sanitize the list to prevent "compare nil with number" crash
                local eligible_jokers = {}
                for k, v in ipairs(G.jokers.cards) do
                    if v and type(v) == 'table' and not v.getting_sliced then 
                        table.insert(eligible_jokers, v) 
                    end
                end
                -- FIX END
                
                if #eligible_jokers > 0 then
                    -- Select a random joker from our SAFE list
                    local chosen_joker = pseudorandom_element(eligible_jokers, pseudoseed("lucky_duplicate"))
                    
                    -- Create a new joker based on the selected one
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.4,
                        func = function()
                            -- Create a new joker card
                            local card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
                            card:start_materialize()
                            card:add_to_deck()
                            if card.edition and card.edition.negative then
                                card:set_edition(nil, true)
                            end
                            G.jokers:emplace(card)
                            return true 
                        end 
                    }))
                end
    
            else
                -- Show failed roll message
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    attention_text({
                        text = localize('k_nope_ex'),
                        scale = 1.3, 
                        hold = 1.4,
                        major = card,
                        backdrop_colour = G.C.SECONDARY_SET.Tarot,
                        align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                        offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                        silent = true
                        })
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                            play_sound('tarot2', 0.76, 0.4);return true end}))
                        play_sound('tarot2', 1, 0.4)
                        card:juice_up(0.3, 0.5)
                return true end }))
            end
        end
    end

    end


    
if config.duplicateFeet then
    local duplicate_feet_tarot = {
        loc = {
            name = "Duplicating Feet",
            text = {
                "Create a copy of a random",
                "{C:attention}Consumable{} held",
                "{s:0.8}({s:0.8,C:tarot}Duplicating Feet{s:0.8} excluded)",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Duplicating Feet",
        slug = "c_feet_duplicating",
        config = {
                max_highlighted = 2,
                extra = {
                }
            },
        cost = 3,
        cost_mult = 1,
        discovered = true,
    }
    
    -- Initialize the Tarot Card
    init_tarot(duplicate_feet_tarot)

    -- Define localization variables
    function SMODS.Tarots.c_feet_duplicating.loc_def(card)
        return {}
    end
    -- Spectral Rate Vouchers for Balatro
    -- This mod adds two vouchers that increase spectral pack appearance rates
    
    
    -- Define conditions for usage-- Define conditions for usage
    function SMODS.Tarots.c_feet_duplicating.can_use(card)
        -- Get list of other consumables (excluding this card and any other Duplicating Feet cards)
        local other_consumables = {}
        for _, c in ipairs(G.consumeables.cards) do
            if c ~= card and c.config.center.key ~= "c_feet_duplicating" then
                table.insert(other_consumables, c)
            end
        end
        
        -- Can only use if there's at least one other consumable and space for another
        return #other_consumables > 0 and #G.consumeables.cards + G.GAME.consumeable_buffer <= G.consumeables.config.card_limit
    end
    
    -- Define the Tarot Card's effect
    function SMODS.Tarots.c_feet_duplicating.use(card, area, copier)
        -- Gather other consumables (excluding this card and any other Duplicating Feet cards)
        local other_consumables = {}
        for _, c in ipairs(G.consumeables.cards) do
            if c ~= card and c.config.center.key ~= "c_feet_duplicating" then
                table.insert(other_consumables, c)
            end
        end
        
        -- Only proceed if we have other consumables
            -- Pick a random consumable to duplicate
            local index = math.random(1, #other_consumables)
            local source_card = other_consumables[index]
            
            -- Add a copy of the chosen consumable
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.5,
                func = function()
                    -- Create a copy of the selected consumable
                    local new_card = create_card(source_card.ability.set, G.consumeables)
                    new_card:set_ability(source_card.config.center)
                    
                    -- Copy edition if the original has one
                    if source_card.edition then
                        new_card:set_edition(source_card.edition, true)
                    end
                    
                    new_card:add_to_deck()
                    G.consumeables:emplace(new_card)
                    
                    return true
                end
            }))
            
        
    end

    end
    
    -----
    if config.pedometerJoker then
        -- Create Joker
        local pedometer = {
            loc = {
                name = "Seconds",
                text = {
                    "Gains {C:mult}+#1#{} Mult for",
                    "every {C:attention}#2#{} cards scored",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    "{C:inactive}(Steps: #4#/#2#){}"
                }
            },
            px = 142, 
            py = 190,
            ability_name = "Pedometer",
            slug = "j_pedometer",
            ability = {
                name = "Pedometer",
                set = "Joker",
                extra = {
                    mult_gain = 1,      -- The interest rate
                    req = 2,            -- The cost of investment (4 steps)
                    mult = 0,           -- The savings account
                    counter = 0,        -- Current steps taken
                }
            },
            rarity = 1, -- Common: The Savings Account
            cost = 6, 
            set = "Feet Joker",
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
            
        }
    
        -- Initialize Joker
        init_joker(pedometer)
    
        -- Set local variables
        function SMODS.Jokers.j_pedometer.loc_def(card)
            return { 
                card.ability.extra.mult_gain, 
                card.ability.extra.req, 
                card.ability.extra.mult,
                card.ability.extra.counter
            }
        end
    
        -- Calculate
        SMODS.Jokers.j_pedometer.calculate = function(self, context)
            -- SCALING: Count every individual card scored ("Steps")
            if context.individual and context.cardarea == G.play and not context.blueprint then
                self.ability.extra.counter = self.ability.extra.counter + 1
                
                -- If we hit the requirement steps
                if self.ability.extra.counter >= self.ability.extra.req then
                    self.ability.extra.counter = 0
                    self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_gain
                    
                    -- Visual Feedback: Small pulse to show value accrued
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            self:juice_up(0.3, 0.4)
                            return true
                        end
                    }))
                    
                    return {
                        message = localize("k_upgrade_ex"),
                        colour = G.C.MULT,
                        card = self
                    }
                end
            end
    
            -- SCORING: Apply the saved Mult
            if SMODS.end_calculate_context(context) then
                if self.ability.extra.mult > 0 then
                    return {
                        message = localize {
                            type = "variable",
                            key = "a_mult",
                            vars = { self.ability.extra.mult }
                        },
                        mult_mod = self.ability.extra.mult,
                        card = self
                    }
                end
            end
        end
    end

    if config.petrifiedSoleJoker then
        local petrified_sole = {
            loc = {
                name = "Petrified Sole",
                text = {
                    "If {C:attention}first discard{} of round is",
                    "a single {C:attention}Stone Card{}, destroy it",
                    "and gain {X:mult,C:white} X#2# {} Mult",
                    "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
                }
            },
            px = 142, 
            py = 190,
            ability_name = "Petrified Sole",
            slug = "j_petrified_sole",
            ability = {
                name = "Petrified Sole",
                set = "Joker",
                extra = {
                    Xmult = 1,      -- Base
                    Xmult_gain = 1  -- Scaling per destruction
                }
            },
            rarity = 3, -- Rare (High Impact / Payoff for Stone strategy)
            cost = 8,
            set = "Feet Joker",
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
            
        }
    
        init_joker(petrified_sole)
    
        function SMODS.Jokers.j_petrified_sole.loc_def(card)
            return { card.ability.extra.Xmult, card.ability.extra.Xmult_gain }
        end
    
        SMODS.Jokers.j_petrified_sole.calculate = function(self, context)
            
            -- 1. SCORING: Apply the XMult
            if SMODS.end_calculate_context(context) then
                if self.ability.extra.Xmult > 1 then
                    return {
                        message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                        Xmult_mod = self.ability.extra.Xmult,
                        card = self
                    }
                end
            end
    
            -- 2. DISCARD: Destruction Logic
            -- Triggers for every card in the discard pile
            if context.discard and not context.blueprint and context.other_card then
                
                -- Checks: 
                -- 1. First discard of the round (discards_used is 0)
                -- 2. Only 1 card being discarded (#context.full_hand == 1)
                if G.GAME.current_round.discards_used == 0 and #context.full_hand == 1 then
                    
                    -- Check if it is a Stone Card
                    if context.other_card.ability.effect == "Stone Card" then
                        
                        -- Upgrade
                        self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_gain
                        
                        -- Visual Feedback
                        card_eval_status_text(self, 'extra', nil, nil, nil, {
                            message = localize('k_upgrade_ex'),
                            colour = G.C.XMULT
                        })
    
                        -- Return true to destroy the card
                        return {
                            remove = true, -- Destroys the card
                            message = "Crushed!",
                            colour = G.C.RED,
                            card = self
                        }
                    end
                end
            end
        end
    end


    if config.giantStrideJoker then
        local giant_stride = {
            loc = {
                name = "Giant Stride",
                text = {
                    "Gains {X:mult,C:white} X#1# {} Mult for each",
                    "level difference between your",
                    "{C:attention}highest{} and {C:attention}2nd highest{}",
                    "poker hand levels",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
                }
            },
            px = 142, 
            py = 190,
            ability_name = "Giant Stride",
            slug = "j_giant_stride",
            ability = {
                name = "Giant Stride",
                set = "Joker",
                extra = {
                    x_mod = 0.25
                }
            },
            rarity = 3, -- Rare (The Payoff)
            cost = 8,
            set = "Feet Joker",
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
            
        }
    
        init_joker(giant_stride)
    
        -- Function to calculate current XMult based on hand levels
        local function calculate_stride_xmult(x_mod)
            local levels = {}
            -- Gather all visible hand levels
            if G.GAME and G.GAME.hands then
                for _, v in pairs(G.GAME.hands) do
                    if v.visible then
                        table.insert(levels, v.level)
                    end
                end
            end
            
            -- Sort descending (Highest to lowest)
            table.sort(levels, function(a, b) return a > b end)
    
            local highest = levels[1] or 0
            local second = levels[2] or 0
            
            -- Calculate the gap
            local gap = math.max(0, highest - second)
            
            -- Base is 1, add 0.25 per level of difference
            return 1 + (gap * x_mod)
        end
    
        SMODS.Jokers.j_giant_stride.loc_def = function(card)
            local current_xmult = calculate_stride_xmult(card.ability.extra.x_mod)
            return { card.ability.extra.x_mod, current_xmult }
        end
    
        SMODS.Jokers.j_giant_stride.calculate = function(self, context)
            -- Apply XMult at end of scoring
            if SMODS.end_calculate_context(context) then
                local current_xmult = calculate_stride_xmult(self.ability.extra.x_mod)
    
                if current_xmult > 1 then
                    return {
                        message = localize{type='variable',key='a_xmult',vars={current_xmult}},
                        Xmult_mod = current_xmult,
                        card = self
                    }
                end
            end
        end
    end

    if config.riskysoleJoker then
        local risky_sole = {
            loc = {
                name = "Risky Sole",
                text = {
                    "Grants {X:mult,C:white} X#1# {} Mult.",
                    "{C:red}Disabled{} for the rest of the",
                    "round if you play your",
                    "{C:attention}most played{} hand.",
                    "{C:inactive}(Currently: #2#)"
                }
            },
            px = 142, 
            py = 190,
            ability_name = "Risky Sole",
            slug = "j_risky_sole",
            ability = {
                name = "Risky Sole",
                set = "Joker",
                extra = {
                    Xmult = 3,
                    disabled = false
                }
            },
            rarity = 3,  -- Rare rarity
            cost = 6, 
            set = "Feet Joker",
            unlocked = true,
            discovered = true,
            blueprint_compat = true,
            eternal_compat = true,
        }
        
        -- Initialize Joker
        init_joker(risky_sole)
      
        -- UI Variable Definition
        function SMODS.Jokers.j_risky_sole.loc_def(card)
            local _most_played, _hand_cnt = 'High Card', -1
            if G.GAME and G.GAME.hands then
                for k, v in pairs(G.GAME.hands) do
                    if v.visible and v.played > _hand_cnt then
                        _most_played = k
                        _hand_cnt = v.played
                    end
                end
            end
            return { card.ability.extra.Xmult, localize(_most_played, 'poker_hands') }
        end
        
        -- Calculation Logic
        SMODS.Jokers.j_risky_sole.calculate = function(self, context)
            -- 1. PRE-SCORING: disable if most-played hand
            if context.before and not self.ability.extra.disabled then
                local _most_played, _hand_cnt = 'High Card', -1
                for k, v in pairs(G.GAME.hands) do
                    if v.played > _hand_cnt then
                        _most_played = k
                        _hand_cnt = v.played
                    end
                end
        
                if context.scoring_name == _most_played then
                    self.ability.extra.disabled = true
                    -- Visual marker WITHOUT touching self.debuff
                    self.children.center:set_sprite_pos({ x = 0, y = 0 })  -- swap to "off" sprite
                    card_eval_status_text(self, 'extra', nil, nil, nil, {
                        message = "Disabled!",
                        colour = G.C.RED
                    })
                    return
                end
            end
        
            -- 2. SCORING: must pass BOTH checks
            --    not self.debuff   = game engine says we're OK (perishable, etc.)
            --    not disabled       = our own state says we're OK
            if SMODS.end_calculate_context(context) 
               and not self.ability.extra.disabled 
               and not self.debuff then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        
            -- 3. END OF ROUND: reset only OUR state, not debuff
            if context.end_of_round and not context.individual 
               and not context.repetition and not context.blueprint then
                if self.ability.extra.disabled then
                    self.ability.extra.disabled = false
                    self.children.center:set_sprite_pos({ x = 1, y = 0 })  -- back to normal sprite
                    self:juice_up(0.3, 0.3)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {
                        message = "Re-enabled",
                        colour = G.C.GREEN
                    })
                end
            end
        end
    end


    if config.psychicJoker then
        local psychic = {
            loc = {
                name = "Psychic Joker",
                text = {
                    "{C:chips}+#1#{} Chips for each",
                    "{C:purple}Tarot{} card used this run.",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
                }
            },
            ability_name = "Psychic Joker",
            slug = "j_psychic",
            px = 142, py = 190,
            ability = {
                name = "Psychic Joker",
                set = "Joker",
                extra = {
                    chip_mod = 10,
                }
            },
            rarity = 1,
            cost = 4, 
            set = "Feet Joker",
            unlocked = true, 
            discovered = true,
            blueprint_compat = true, 
            eternal_compat = true,
        }
    
        init_joker(psychic)
      
        -- UI Variable Definition
        function SMODS.Jokers.j_psychic.loc_def(card)
            -- Simply grab the tarot count directly, defaulting to 0 if it doesn't exist
            local tarot_total = (G.GAME and G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.tarot) or 0
            
            return { card.ability.extra.chip_mod, (card.ability.extra.chip_mod * tarot_total) }
        end
    
        -- Calculation Logic
        SMODS.Jokers.j_psychic.calculate = function(self, context)
            -- SCORING
            if SMODS.end_calculate_context(context) then
                -- Grab the tarot count here as well
                local tarot_total = (G.GAME and G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.tarot) or 0
    
                local total_chips = self.ability.extra.chip_mod * tarot_total
    
                if total_chips > 0 then
                    return {
                        message = localize{type='variable', key='a_chips', vars={total_chips}},
                        chip_mod = total_chips,
                        card = self
                    }
                end
            end
        end
    end


-- Add this to your config table at the top of Painted.lua
-- queensTributeJoker = true,

if config.queensTributeJoker then

    -- 1. ANIMATION SETUP
    local frames_tribute_count = 273 -- Set this to your total frame count
    local frames_per_sheet = 50

    local function register_tribute_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_queens_tribute_sheet_" .. sheet_idx,
                path = "animations/j_queens_tribute_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end

    register_tribute_sheets(frames_tribute_count)

    -- 2. JOKER DEFINITION (Updated to Painted.lua standard)
    local queens_tribute = {
        loc = {
            name = "Queen's Tribute",
            text = {
                "Earn {C:money}$#1#{} for each",
                "played {C:attention}Queen{} scored"
            }
        },
        px = 142,
        py = 190,
        ability_name = "Queen's Tribute",
        slug = "j_queens_tribute",
        ability = {
            name = "Queen's Tribute",
            set = "Joker",
            extra = {
                dollars = 2,
                -- Animation Variables
                is_animating = false,
                current_frame = 1,
                max_frames = frames_tribute_count,
                frame_timer = 0,
                frame_delay = 0.03, -- ~30fps
                last_real_time = nil
            }
        },
        rarity = 1, -- Common/Uncommon
        cost = 3,
        unlocked = true,
        discovered = true,
        blueprint_compat = true, 
        eternal_compat = true,
        atlas = "j_queens_tribute_sheet_1"
    }

    init_joker(queens_tribute, true)

    -- 3. UI DISPLAY
    function SMODS.Jokers.j_queens_tribute.loc_def(card)
        return { card.ability.extra.dollars }
    end

    -- 4. SCORING & TRIGGERS
    SMODS.Jokers.j_queens_tribute.calculate = function(self, context)
        -- REMOVED: "and not context.blueprint" so The Perfect Fit can copy it!
        if context.individual and context.cardarea == G.play then
            if context.other_card:get_id() == 12 then -- 12 is Queen ID
    
                -- We wrap the animation state change AND the money in the event
                G.E_MANAGER:add_event(Event({
                    trigger = 'before', -- Fires slightly before the visual message
                    delay = 0.1,
                    func = function()
                        -- Start the animation state here
                        if not self.ability.extra.is_animating then
                            self.ability.extra.is_animating = true
                            self.ability.extra.current_frame = 1
                            self.ability.extra.frame_timer = 0
                        end
                        
                        -- Update the dollar buffer for safety (Linked to extra.dollars for better scaling)
                        G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + self.ability.extra.dollars
                        G.E_MANAGER:add_event(Event({
                            func = (function() 
                                G.GAME.dollar_buffer = 0; 
                                return true 
                            end)
                        }))
                        return true
                    end
                }))
    
                -- Return the visual feedback
                return {
                    dollars = self.ability.extra.dollars,
                    card = self
                }
            end
        end
    end

    -- 5. ANIMATION LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)

        -- ADDED: Safely verify `self.ability` exists first to prevent crashes
        if self.ability and self.ability.name == "Queen's Tribute" and self.added_to_deck then

            -- Only run the frame advancement if is_animating is true
            if self.ability.extra.is_animating then
                local current_real_time = love.timer.getTime()

                if not self.ability.extra.last_real_time then
                    self.ability.extra.last_real_time = current_real_time
                end

                local real_dt = current_real_time - self.ability.extra.last_real_time
                self.ability.extra.last_real_time = current_real_time

                self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt

                if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                    self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay

                    self.ability.extra.current_frame = self.ability.extra.current_frame + 1

                    -- Check if the animation has finished its full cycle
                    if self.ability.extra.current_frame > self.ability.extra.max_frames then
                        -- 1. Stop the animation
                        self.ability.extra.is_animating = false
                        self.ability.extra.current_frame = 1
                        self.ability.extra.last_real_time = nil

                        -- 2. Revert immediately to the first frame (static sprite)
                        if self.children.center and G.ASSET_ATLAS["j_queens_tribute_sheet_1"] then
                            self.children.center.atlas = G.ASSET_ATLAS["j_queens_tribute_sheet_1"]
                            self.children.center:set_sprite_pos({ x = 0, y = 0 })
                        end
                    else
                        -- Continue Sprite Sheet Swapping
                        local frame_num = self.ability.extra.current_frame
                        local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                        local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)

                        local sheet_atlas_key = "j_queens_tribute_sheet_" .. sheet_idx

                        if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                            self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                            self.children.center:set_sprite_pos({
                                x = frame_in_sheet % 10,
                                y = math.floor(frame_in_sheet / 10)
                            })
                        end
                    end
                end
            else
                -- If not animating, ensure the real-time timer is cleanly reset
                self.ability.extra.last_real_time = nil
            end
        end
    end
end


if config.littleStepsJoker then

    -- 1. ANIMATION SETUP
    local frames_little_steps_count = 896 -- Total frame count for Little Steps
    local frames_per_sheet = 50
    
    local function register_little_steps_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_little_steps_sheet_" .. sheet_idx,
                -- Adjusted path to match your old littlesteps folder structure
                path = "animations/littlesteps/j_little_steps_sheet_" .. sheet_idx .. ".png", 
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    register_little_steps_sheets(frames_little_steps_count)
    
    -- 2. JOKER DEFINITION
    local little_steps = SMODS.Joker:new(
        "Little Steps", 
        "j_little_steps", 
        { 
            extra = { 
                -- Original Gameplay variables
                odds = 2,
                dollars = 1,
                total_bonus = 0,
                
                -- Animation Variables
                current_frame = 1,
                max_frames = frames_little_steps_count,
                frame_timer = 0,
                frame_delay = 0.016,
                last_real_time = nil
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Little Steps",
            text = {
                "{C:green}#2# in #1#{} chance to permanently add",
                "{C:money}$#3#{} to the interest at the end of",
                "the round after beating",
                " a blind in {C:attention}1{} hand"
            }
        },
        3, -- Rarity
        6, -- Cost
        true, true, true, true, nil,
        "j_little_steps_sheet_1"
    )
    
    little_steps:register()

    -- 3. Mechanics
    function SMODS.Jokers.j_little_steps.loc_def(card)
        return { card.ability.extra.odds, "" .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.dollars }
    end

    SMODS.Jokers.j_little_steps.calculate = function(self, context)
        -- Check at the end of round if blind was beaten with exactly one hand
        if context.end_of_round and not context.individual and not context.repetition then
            if G.GAME.current_round and G.GAME.current_round.hands_played == 1 then
                if pseudorandom("little_steps") < G.GAME.probabilities.normal / self.ability.extra.odds then
                    G.GAME.interest_amount = G.GAME.interest_amount + self.ability.extra.dollars
                    self.ability.extra.total_bonus = self.ability.extra.total_bonus + self.ability.extra.dollars
                    
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = "+$" .. self.ability.extra.dollars,
                        colour = G.C.MONEY
                    })
                else
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = localize("k_nope_ex"),
                        colour = G.C.SECONDARY_SET.Tarot
                    })
                end
            end
        end
    end

    -- 4. ANIMATION LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        if self.ability.name == "Little Steps" and self.added_to_deck then
            local current_real_time = love.timer.getTime()

 
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
    
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                
                -- Sprite Sheet Swapping
                local frame_num = self.ability.extra.current_frame
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_little_steps_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end


-- Add this line to your 'local config = {' table at the top of Painted.lua
-- soleStampJoker = true,

if config.facestompjoker then
    local face_stomp = {
        ability_name = "Face Stomp",
        slug = "j_face_stomp",
        ability = { extra = 1 }, -- X1 Mult added per unique seal
        loc = {
            name = "Face Stomp",
            text = {
                "Gives {X:mult,C:white} X#1# {} Mult for",
                "every {C:attention}unique Seal{} in",
                "your full deck",
                "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        rarity = 2, -- Uncommon (The Specialist)
        cost = 7,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(face_stomp)

    -- Helper function to count unique seals
    local function get_unique_seal_count()
        local unique_seals = {}
        local count = 0
        if G.playing_cards then
            for k, v in ipairs(G.playing_cards) do
                if v.seal then
                    if not unique_seals[v.seal] then
                        unique_seals[v.seal] = true
                        count = count + 1
                    end
                end
            end
        end
        return count
    end

    -- Localization Variables
    function SMODS.Jokers.j_face_stomp.loc_def(card)
        local count = get_unique_seal_count()
        -- Formula: Base 1 + (Count * Extra)
        -- 0 Seals = X1
        -- 1 Seal  = X2
        -- 4 Seals = X5
        return { card.ability.extra, 1 + (count * card.ability.extra) }
    end

    -- Calculation Logic
    function SMODS.Jokers.j_face_stomp.calculate(self, context)
        -- Apply XMult during scoring
        if SMODS.end_calculate_context(context) then
            local count = get_unique_seal_count()
            local xmult_val = 1 + (count * self.ability.extra)

            if xmult_val > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={xmult_val}},
                    Xmult_mod = xmult_val,
                    card = self
                }
            end
        end
    end

    -- HOOKS: Detect when a seal is added to trigger the Upgrade message automatically
    
    -- Helper to trigger the visual effect
    local function trigger_facestomp_upgrade()
        if G.jokers then
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.name == "Face Stomp" then
                    card_eval_status_text(joker, 'extra', nil, nil, nil, {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.XMULT
                    })
                    joker:juice_up(0.5, 0.5)
                end
            end
        end
    end

    -- 1. Hook into set_seal (Using Tarots/Spectrals)
    local set_seal_ref = Card.set_seal
    function Card:set_seal(_seal, silent, immediate)
        -- Count before change
        local count_before = get_unique_seal_count()
        
        -- Run original logic
        local ret = set_seal_ref(self, _seal, silent, immediate)
        
        -- Count after change
        local count_after = get_unique_seal_count()

        -- If count increased, notify Face Stomp
        if count_after > count_before then
            trigger_facestomp_upgrade()
        end

        return ret
    end

    -- 2. Hook into add_to_deck (Opening Packs/Standard Tags)
    local add_to_deck_seal_ref = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        -- Run original logic first so the card is actually in G.playing_cards
        local ret = add_to_deck_seal_ref(self, from_debuff)

        -- If the added card has a seal, check if it was a new unique one
        if self.seal and self.ability.set ~= 'Joker' then
            -- We just added the card, so 'get_unique_seal_count' includes it.
            -- We need to check if this specific seal exists elsewhere.
            local unique_seals = {}
            local others_have_this_seal = false
            
            if G.playing_cards then
                for k, v in ipairs(G.playing_cards) do
                    if v ~= self and v.seal == self.seal then
                        others_have_this_seal = true
                        break
                    end
                end
            end

            -- If no other card has this seal, we just increased the unique count
            if not others_have_this_seal then
                trigger_facestomp_upgrade()
            end
        end

        return ret
    end
end

if config.soleServiceJoker then
    -- 1. Define the Food Map
    local food_map = {
        default       = { x = 0, y = 0 },
        j_gros_michel = { x = 1, y = 0 },
        j_ice_cream   = { x = 2, y = 0 },
        j_popcorn     = { x = 3, y = 0 },
        j_ramen       = { x = 4, y = 0 },
        j_turtle_bean = { x = 5, y = 0 },
        j_selzer      = { x = 6, y = 0 },
        j_diet_cola   = { x = 7, y = 0 }
    }

    local service_menu = {
        "j_gros_michel", "j_ice_cream", "j_popcorn", 
        "j_ramen", "j_turtle_bean", "j_selzer", "j_diet_cola"
    }

    -- 2. Create Joker
    local sole_service = {
        loc = {
            name = "Sole Service",
            text = {
                "When {C:attention}Blind{} is selected,",
                "create a random {C:dark_edition}Negative{}",
                "{C:attention}Food Joker{} that is",
                "{C:red}destroyed{} at end of round"
            }
        },
        px = 142, py = 190, -- Ensure these match your actual sprite size
        ability_name = "Sole Service",
        slug = "j_sole_service", 
        ability = {
            name = "Sole Service",
            set = "Joker",
            extra = {
                current_dish = "default",
                doomed_card_id = nil 
            }
        },
        rarity = 3,
        cost = 8, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(sole_service)

    -- 3. Calculate Logic (Synchronous / No Events)
    SMODS.Jokers.j_sole_service.calculate = function(self, context)
        
        -- A. TRIGGER: Boss Blind Selected
        if context.setting_blind and not self.getting_sliced then
            if not self.debuff then
                
                -- 1. Logic: Pick Food
                local seed = "sole_service" .. G.GAME.round_resets.ante
                local chosen_food = pseudorandom_element(service_menu, pseudoseed(seed))
                
                -- 2. State: Save the dish
                self.ability.extra.current_dish = chosen_food

                -- 3. Visuals: DIRECT CHANGE (Like Dominant Foot)
                local new_pos = food_map[chosen_food]
                if new_pos then
                    self.children.center:set_sprite_pos(new_pos)
                end
                
                -- 4. Spawn Negative Food
                local card = create_card("Joker", G.jokers, nil, nil, nil, nil, chosen_food, "sole_service")
                card:set_edition({negative = true}, true)
                card.ability.sole_service_doomed = true
                card:add_to_deck()
                G.jokers:emplace(card)
                card:start_materialize()
                
                -- 5. Effects
                play_sound('timpani')
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = "Swallow!",
                    colour = G.C.MONEY
                })
                
                return true
            end
        end

        -- B. TRIGGER: End of Round (Reset)
        if context.end_of_round and not context.individual and not context.repetition then
            -- 1. Destroy Doomed Food
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.sole_service_doomed and not joker.getting_sliced then
                    joker.getting_sliced = true
                    joker:start_dissolve()
                end
            end

            -- 2. Reset Visuals (Like Dominant Foot)
            if self.ability.extra.current_dish ~= "default" then
                self.ability.extra.current_dish = "default"
                self.children.center:set_sprite_pos(food_map.default)
                
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = "Next!",
                    colour = G.C.RED
                })
                return true
            end
        end
    end
end

-- Add this to your config table at the top of the file:
-- cuckedJoker = true,

if config.cuckedJoker then
    -- 1. Create Joker Definition
    local cucked_joker = {
        loc = {
            name = "Cucked",
            text = {
                "{C:green}#1# in #2#{} chance to create",
                "a {C:dark_edition}Negative{} copy of any",
                "used or sold {C:attention}Consumable{}",
                "{C:inactive}(Must not be Negative){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Cucked",
        slug = "j_cucked",
        ability = {
            name = "Cucked",
            set = "Joker",
            extra = { 
                odds = 3 
            }
        },
        rarity = 2, -- Uncommon rarity
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- 2. Initialize Joker
    init_joker(cucked_joker)

    -- 3. Dynamic Text Variables
    function SMODS.Jokers.j_cucked.loc_def(card)
        return { "" .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds }
    end

    -- 4. Calculate Logic
    SMODS.Jokers.j_cucked.calculate = function(self, context)
        -- Identify if a consumable is being used OR sold
        local target_card = nil
        
        if context.using_consumeable and context.consumeable then
            target_card = context.consumeable
        elseif context.selling_card and context.card then
            target_card = context.card
        end

        -- Verify we have a target card, and that it is actually a Consumable (Tarot, Planet, Spectral)
        if target_card and target_card.ability and (target_card.ability.set == "Tarot" or target_card.ability.set == "Planet" or target_card.ability.set == "Spectral" or target_card.ability.consumeable) then
            
            -- Ensure the Consumable is NOT already Negative
            if not (target_card.edition and target_card.edition.negative) then
                
                -- Roll for the 1 in 3 chance
                if pseudorandom("cucked_joker") < (G.GAME.probabilities.normal or 1) / self.ability.extra.odds then
                    
                    G.E_MANAGER:add_event(Event({
                        trigger = "after",
                        delay = 0.5,
                        func = function()
                            -- Create a copy of the consumable
                            local card_type = target_card.ability.set
                            local new_card = create_card(card_type, G.consumeables)
                            new_card:set_ability(target_card.config.center)
                            
                            -- Apply Negative Edition (Allows it to bypass consumable slot limits automatically)
                            new_card:set_edition({negative = true}, true)
                            
                            -- Add to consumable slots
                            new_card:add_to_deck()
                            G.consumeables:emplace(new_card)
                            
                            -- Audio & Visual feedback
                            play_sound('tarot1')
                            self:juice_up(0.5, 0.5)
                            card_eval_status_text(self, "extra", nil, nil, nil, {
                                message = "Cucked!",
                                colour = G.C.DARK_EDITION
                            })
                            
                            return true
                        end
                    }))
                end
            end
        end
    end
end

if config.desiredFeet then
    local desired_feet = {
        loc = {
            name = "Desired Feet",
            text = {
                "Gains {C:chips}+#1#{} Chips for each",
                "remaining {C:attention}hand{} at",
                "end of round",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
            }
        },
        ability_name = "Desired Feet",
        slug = "j_desired",
        px = 142, py = 190,
        ability = {
            name = "Desired Feet",
            set = "Joker",
            extra = {
                chip_gain = 5,
                chips = 10
            }
        },
        rarity = 1,
        cost = 4, 
        set = "Feet Joker",
        unlocked = true, 
        discovered = true,
        blueprint_compat = true, 
        eternal_compat = true,
    }

    init_joker(desired_feet)

    function SMODS.Jokers.j_desired.loc_def(card)
        return { card.ability.extra.chip_gain, card.ability.extra.chips }
    end

    SMODS.Jokers.j_desired.calculate = function(self, context)
        -- SCALING: End of round
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            local hands_left = G.GAME.current_round.hands_left
            if hands_left > 0 then
                local gain = hands_left * self.ability.extra.chip_gain
                self.ability.extra.chips = self.ability.extra.chips + gain
                
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.CHIPS,
                    card = self
                }
            end
        end

        -- SCORING
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.chips > 0 then
                return {
                    message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                    chip_mod = self.ability.extra.chips,
                    card = self
                }
            end
        end
    end
end

if config.soleProprietorJoker then
    local sole_proprietor = {
        loc = {
            name = "Sole Proprietor",
            text = {
                "Earn {C:money}$#1#{} to {C:money}$#2#{}",
                "at end of round based on",
                "winning {C:attention}Poker Hand{} rank",
                "{C:inactive}(Last {C:attention}#3#{C:inactive})"
            }
        },
        ability_name = "Sole Proprietor",
        slug = "j_sole_proprietor",
        px = 142, 
        py = 190,
        ability = {
            name = "Sole Proprietor",
            set = "Joker",
            extra = {
                min_payout = 1,
                max_payout = 10
            }
        },
        rarity = 1, -- Common: Economy / Investment
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true
        }

    init_joker(sole_proprietor)

    -- Dynamic Description: Shows range and the last hand played for clarity
    function SMODS.Jokers.j_sole_proprietor.loc_def(card)
        local last_hand = "None"
        if G.GAME and G.GAME.last_hand_played then
            last_hand = G.GAME.last_hand_played
        end
        return { card.ability.extra.min_payout, card.ability.extra.max_payout, last_hand }
    end


    -- Calculation: Payout logic based on hand rank
    SMODS.Jokers.j_sole_proprietor.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition then
            -- Map of Hand Names to Dollar Amounts
            local payouts = {
                ['High Card'] = 1,
                ['Pair'] = 2,
                ['Two Pair'] = 2,
                ['Three of a Kind'] = 4,
                ['Straight'] = 4,
                ['Flush'] = 4,
                ['Full House'] = 6,
                ['Four of a Kind'] = 6,
                ['Straight Flush'] = 8,
                ['Five of a Kind'] = 8,
                ['Flush House'] = 10,
                ['Flush Five'] = 10
            }

            local last_hand = G.GAME.last_hand_played
            
            -- Safety check: If for some reason last_hand is nil, we default to High Card logic (1)
            -- This prevents crashes on first round if logic fires early
            local reward = 1
            if last_hand and payouts[last_hand] then
                reward = payouts[last_hand]
            end

            -- Provide Money
            ease_dollars(reward)
            
            -- FIX: Return the table instead of manually calling card_eval_status_text.
            -- Blueprint will read this table and apply the visuals to the Blueprint card automatically.
            return {
                message = localize('$') .. reward,
                colour = G.C.MONEY,
                card = self
            }
        end
    end 
end


if config.sustainPedalJoker then
    -- 1. Define Joker
    local sustain_pedal = {
        loc = {
            name = "Sustain Pedal",
            text = {
                "When a {C:attention}Glass Card{} breaks,",
                "create a {C:attention}Glass Card{} of the",
                "same {C:attention}rank{} in your hand.",
                "{C:inactive}(Random suit, No Edition/Seal){}"
            }
        },
        ability_name = "Sustain Pedal",
        slug = "j_sustain_pedal",
        px = 142, 
        py = 190,
        ability = {
            name = "Sustain Pedal",
            set = "Joker",
            extra = {}
        },
        rarity = 2, -- Uncommon
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true
    }

    init_joker(sustain_pedal)

    function SMODS.Jokers.j_sustain_pedal.loc_def(card)
        return {}
    end

    -- The calculation remains empty as this Joker functions via a global Hook
    SMODS.Jokers.j_sustain_pedal.calculate = function(self, context)
        return nil
    end

    -- 4. HOOK: Card:shatter
    local shatter_ref = Card.shatter
    function Card:shatter()
        -- Capture the rank before the card is destroyed
        local saved_rank = self.base.value
        
        -- Run original logic
        shatter_ref(self)
        
        -- Check if the card effectively shattered
        if self.shattered and G.jokers and G.jokers.cards then
             for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.name == "Sustain Pedal" and not joker.debuff then
                    
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.2,
                        func = function()
                            -- 1. Create the card using the saved rank
                            -- We use 'Base' but provide the specific rank key
                            local new_card = create_card('Base', G.hand, nil, nil, nil, nil, saved_rank, 'sustain')
                            
                            -- 2. Force Glass Enhancement
                            new_card:set_ability(G.P_CENTERS.m_glass)
                            new_card:set_edition(nil, true)
                            new_card:set_seal(nil, true)
                            
                            -- 3. Register to the deck and playing cards list
                            new_card:add_to_deck()
                            G.deck.config.card_limit = G.deck.config.card_limit + 1
                            table.insert(G.playing_cards, new_card)
                            
                            -- 4. Place in Hand and Animate
                            G.hand:emplace(new_card)
                            new_card:start_materialize()
                            
                            -- 5. Trigger Hologram/Add effects
                            if G.jokers then
                                for i = 1, #G.jokers.cards do
                                    G.jokers.cards[i]:calculate_joker({playing_card_added = true, cards = {new_card}})
                                end
                            end

                            -- 6. Visual Feedback
                            new_card:juice_up()
                            joker:juice_up()
                            card_eval_status_text(joker, 'extra', nil, nil, nil, {
                                message = "Sustained " .. saved_rank .. "!",
                                colour = G.C.RED
                            })
                            return true
                        end
                    }))
                end
            end
        end
    end
end

if config.muddySolesJoker then
    local muddy_soles = {
        loc = {
            name = "Muddy Soles",
            text = {
                "After defeating {C:attention}#2#{} Blinds,",
                "add a random {C:attention}Seal{} to",
                "a random card in hand",
                "{C:inactive}(#1#/#2#){}"
            }
        },
        ability_name = "Muddy Soles",
        slug = "j_muddy_soles",
        px = 142,
        py = 190,
        ability = {
            name = "Muddy Soles",
            set = "Joker",
            extra = {
                current = 0,
                req = 3, -- Updated from 4 hands to 3 blinds
            }
        },
        rarity = 1,
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    init_joker(muddy_soles)

    -- Dynamic Description to show progress
    function SMODS.Jokers.j_muddy_soles.loc_def(card)
        return { card.ability.extra.current, card.ability.extra.req }
    end

    -- Logic: Increment counter on Blinds defeated -> Trigger effect -> Reset
    SMODS.Jokers.j_muddy_soles.calculate = function(self, context)
        -- Trigger when a Blind is defeated
        -- FIXED: Removed invalid check `G.GAME.blind.main_blind` which prevented activation
        if context.end_of_round and not context.blueprint and not context.individual and not context.repetition then
            
            -- Increment progress
            self.ability.extra.current = self.ability.extra.current + 1

            -- Check if requirement met
            if self.ability.extra.current >= self.ability.extra.req then
                -- Reset counter
                self.ability.extra.current = 0

                -- Find a valid target in hand (Prioritize cards with NO seal)
                local available_cards = {}
                for _, v in ipairs(G.hand.cards) do
                    if not v.seal then
                        table.insert(available_cards, v)
                    end
                end

                -- Fallback: If all cards have seals, pick any card
                if #available_cards == 0 then
                    for _, v in ipairs(G.hand.cards) do
                        table.insert(available_cards, v)
                    end
                end

                -- If we have cards in hand, apply the effect
                if #available_cards > 0 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local card_to_seal = pseudorandom_element(available_cards, pseudoseed("muddy_soles_card"))
                            local seal_type = pseudorandom_element({"Red", "Blue", "Gold", "Purple"}, pseudoseed("muddy_soles_type"))
                            card_to_seal:set_seal(seal_type, true, true)
                            
                            -- Visual Feedback
                            card_to_seal:juice_up(0.5, 0.5)
                            self:juice_up(0.5, 0.5)
                            card_eval_status_text(self, "extra", nil, nil, nil, { 
                                message = "Muddy!", 
                                colour = G.C.SECONDARY_SET.Tarot 
                            })
                            play_sound('gold_seal', 1.2, 0.4)
                            return true
                        end
                    }))
                else
                    -- Failsafe: if the hand is empty but the effect triggered
                    card_eval_status_text(self, 'extra', nil, nil, nil, {
                        message = "Seal!",
                        colour = G.C.SECONDARY_SET.Tarot
                    })
                end
            else
                -- Visual Feedback: Show progression text above the Joker
                card_eval_status_text(self, 'extra', nil, nil, nil, {
                    message = self.ability.extra.current .. "/" .. self.ability.extra.req,
                    colour = G.C.FILTER
                })
            end
        end
    end
end


if config.rankDiversityJoker then
    local rank_diversity = {
        loc = {
            name = "Rank Diversity",
            text = {
                "Gains {C:mult}+1{} Mult for every {C:attention}unique{}",
                "scored rank in the played hand.",
                "{C:red}Resets{} if played hand contains a {C:attention}Pair{}.",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        ability_name = "Rank Diversity",
        slug = "j_rank_diversity",
        px = 142, py = 190,
        ability = {
            name = "Rank Diversity",
            set = "Joker",
            extra = {
                mult = 0,
            }
        },
        rarity = 1,
        cost = 4, 
        set = "Feet Joker",
        unlocked = true, 
        discovered = true,
        blueprint_compat = true, 
        eternal_compat = true,
    }

    init_joker(rank_diversity)

    function SMODS.Jokers.j_rank_diversity.loc_def(card)
        return { 1, card.ability.extra.mult }
    end

    SMODS.Jokers.j_rank_diversity.calculate = function(self, context)
        -- SCALING & RESET LOGIC
        if context.before and not context.blueprint and context.scoring_hand then
            local ranks_in_hand = {}
            local unique_rank_count = 0
            local has_pair = false
            
            for _, card in ipairs(context.scoring_hand) do
                if not card.debuff then
                    local rank = card:get_id()
                    if ranks_in_hand[rank] then
                        has_pair = true -- We found a duplicate!
                    else
                        ranks_in_hand[rank] = true
                        unique_rank_count = unique_rank_count + 1
                    end
                end
            end
            
            -- 1. Check for Reset (If a pair was found)
            if has_pair then
                if self.ability.extra.mult > 0 then
                    self.ability.extra.mult = 0
                    return {
                        card = self,
                        message = localize('k_reset'),
                        colour = G.C.RED
                    }
                end
            -- 2. Otherwise, Scale (Add +1 for each unique rank)
            else
                self.ability.extra.mult = self.ability.extra.mult + unique_rank_count
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT,
                    card = self
                }
            end
        end

        -- SCORING
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={self.ability.extra.mult}},
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
end
if config.solitaireSoleJoker then
    local solitaire_sole = {
        loc = {
            name = "Solitaire Sole",
            text = {
                "Gains {C:chips}+#1#{} Chips if played hand",
                "contains exactly {C:attention}1{} Queen",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Solitaire Sole",
        slug = "j_solitaire_sole",

        ability = {
            name = "Solitaire Sole",
            set = "Joker",
            extra = {
                chip_mod = 4,
                chips = 0,
            }
        },
        rarity = 1,
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(solitaire_sole)

    function SMODS.Jokers.j_solitaire_sole.loc_def(card)
        return { card.ability.extra.chip_mod, card.ability.extra.chips }
    end

    SMODS.Jokers.j_solitaire_sole.calculate = function(self, context)
        if context.before and context.full_hand and not context.blueprint then
            local ace_count = 0
            for _, card in ipairs(context.full_hand) do
                if card:get_id() == 12 and not card.debuff then
                    ace_count = ace_count + 1
                end
            end
            
            if ace_count == 1 then
                self.ability.extra.chips = self.ability.extra.chips + self.ability.extra.chip_mod
                
                -- Show upgrade message
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = "Upgrade!",
                    colour = G.C.CHIPS
                })
            end
        end
    
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.chips > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_chips",
                        vars = { self.ability.extra.chips }
                    },
                    chip_mod = self.ability.extra.chips,
                    card = self
                }
            end
        end
    end
end


if config.soleFoodJoker then
    local j_sole_food = {
        loc = {
            name = "Sole Food",
            text = {
                "{X:mult,C:white} X#1# {} Mult",
                "Loses {X:mult,C:white} X#2# {} Mult when",
                "a {C:attention}Consumable{} is used",
            }
        },
        ability_name = "Sole Food",
        slug = "j_sole_food",
        px = 142, py = 190,
        
        rarity = 2,
        cost = 5,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = false, -- Food jokers generally shouldn't be eternal as they are meant to die
        ability = {
            extra = {
                Xmult = 2,
                Xmult_mod = 0.1
            }
        },
        -- Ensure you have a 'j_sole_food.png' in your assets or use a placeholder
        -- atlas = "Joker", 
        -- pos = {x = 0, y = 0} 
    }

    init_joker(j_sole_food)

    SMODS.Jokers.j_sole_food.loc_def = function(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end

    SMODS.Jokers.j_sole_food.calculate = function(self, context)
        -- 1. Apply the XMult during scoring
        if context.joker_main then
            return {
                message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                Xmult_mod = self.ability.extra.Xmult
            }
        end

        -- 2. Handle degradation when using a consumable
        if context.using_consumeable and not context.blueprint then
            -- Check if the next reduction would drop it to (or below) X1
            -- We use X1 as the floor because X0 would zero out the score (mathematically disastrous)
            -- This mimics logic like Ramen which destroys at X1
            if self.ability.extra.Xmult - self.ability.extra.Xmult_mod <= 1 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        self.T.r = -0.2
                        self:juice_up(0.3, 0.4)
                        self.states.drag.is = true
                        self.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                    G.jokers:remove_card(self)
                                    self:remove()
                                    self = nil
                                return true; end}))
                        return true
                    end
                }))
                return {
                    message = localize('k_eaten_ex'),
                    colour = G.C.RED
                }
            else
                -- Reduce the XMult
                self.ability.extra.Xmult = self.ability.extra.Xmult - self.ability.extra.Xmult_mod
                return {
                    message = localize{type='variable',key='a_xmult_minus',vars={self.ability.extra.Xmult_mod}},
                    colour = G.C.RED
                }
            end
        end
    end
end

if config.sleightoffootjoker then
    local sleight_of_foot = {
        loc = {
            name = "Sleight of Foot",
            text = {
                "If played hand is {C:attention}#1#{}",
                "upgrade your {C:attention}most played{} hand",
                "by {C:attention}1{} level.",
                "{s:0.8}Trigger hand changes each round."
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sleight of Foot",
        slug = "j_sleight_of_foot",
        ability = {
            name = "Sleight of Foot",
            set = "Joker",
            extra = {
                target_hand = "High Card",
            }
        },
        rarity = 1,  -- Uncommon rarity
        cost = 4, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(sleight_of_foot)

    -- UI Variable Definition
    function SMODS.Jokers.j_sleight_of_foot.loc_def(card)
        return { localize(card.ability.extra.target_hand, 'poker_hands') }
    end

    -- Calculation Logic
    SMODS.Jokers.j_sleight_of_foot.calculate = function(self, context)
        -- 1. TRIGGER CHECK
        if context.before and not self.debuff then
            if context.scoring_name == self.ability.extra.target_hand then
                
                -- Identify the most played hand (Fixed variable from .count to .played)
                local _most_played, _hand_cnt = 'High Card', -1
                for k, v in pairs(G.GAME.hands) do
                    if v.visible and v.played > _hand_cnt then
                        _most_played = k
                        _hand_cnt = v.played
                    end
                end

                -- Visual feedback for the upgrade
                update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(_most_played, 'poker_hands'), chips = '...', mult = '...', level=''})
                
                level_up_hand(self, _most_played, nil, 1)

                return {
                    card = self,
                    message = localize("k_upgrade_ex"),
                    colour = G.C.ATTENTION
                }
            end
        end
        
        -- 2. ROTATION
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            local poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible then
                    table.insert(poker_hands, k)
                end
            end
            
            local old_hand = self.ability.extra.target_hand
            local new_hand = nil
            local attempt = 0
            
            while not new_hand and attempt < 100 do
                local pick = pseudorandom_element(poker_hands, pseudoseed("sleight_of_foot"))
                if pick ~= old_hand then
                    new_hand = pick
                end
                attempt = attempt + 1
            end
            
            self.ability.extra.target_hand = new_hand or old_hand
            
            self:juice_up(0.3, 0.3)
            attention_text({
                text = localize(self.ability.extra.target_hand, "poker_hands"),
                scale = 0.5,
                hold = 1.0,
                backdrop_colour = G.C.MONEY,
                align = 'bm',
                major = self,
                offset = {x = 0, y = 0.05*G.CARD_H}
            })
        end
    end
end

if config.farewellFeetJoker then
    -- Create Joker
    local farewell_feet = {
        loc = {
            name = "Farewell Feet",
            text = {
                "When sold, reset",
                "Ante to {C:attention}1{} and",
                "set money to {C:money}$0{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Farewell Feet",
        slug = "j_farewell",
        ability = {
            name = "Farewell Feet",
            set = "Joker",
            extra = {
                has_appeared = false,
            }
        },
        rarity = 3,  -- Rare/Legendary style
        cost = 12, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = false,  -- Can't be eternal
        
    }

    -- Initialize Joker using Painted.lua helper
    init_joker(farewell_feet)

    -- Set local variables for text
    function SMODS.Jokers.j_farewell.loc_def(card)
        return { }
    end

    -- No calculation needed for in-game scoring effects
    SMODS.Jokers.j_farewell.calculate = function(self, context)
        return nil
    end

    -- Hook into the sell card function to handle the special effect
    local sell_card_ref = Card.sell_card
    function Card:sell_card(...)
        if self.ability.name == "Farewell Feet" then
            -- 1. Reset ante to 1
            G.GAME.round_resets.ante = 1
            
            -- 2. Set money to 0 (Subtract current total)
            ease_dollars(-G.GAME.dollars, true)
            
            -- Show special effect message
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound("moan") -- Custom Painted.lua sound
                    self:juice_up(1.0, 1.0)
                    
                    -- Display visual feedback
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = "Farewell!",
                        colour = G.C.MONEY,
                        delay = 0.5
                    })
                    
                    -- Mark it as used for this run tracking
                    G.GAME.farewell_feet_used = true
                    
                    return true
                end
            }))
        end
        
        -- Call original function for actual selling/removal logic
        return sell_card_ref(self, ...)
    end
end



if config.eclipsedJoker then
    local eclipsed = {
        loc = {
            name = "Eclipsed",
            text = {
                "When a {C:attention}King{} is scored,",
                "{C:red}destroy{} it and gain",
                "{X:mult,C:white} X#1# {} Mult permanently",
                "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Eclipsed",
        slug = "j_eclipsed",
        ability = {
            name = "Eclipsed",
            set = "Joker",
            extra = {
                Xmult_gain = 0.35,
                Xmult = 1
            }
        },
        rarity = 3, -- Common: The Savings Account
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(eclipsed)

    function SMODS.Jokers.j_eclipsed.loc_def(card)
        return { card.ability.extra.Xmult_gain, card.ability.extra.Xmult }
    end

    SMODS.Jokers.j_eclipsed.calculate = function(self, context)
        -- 1. SCORING: Apply the accumulated XMult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end

        -- 2. DESTRUCTION: Trigger on Kings being scored
        -- We use the 'destroying_card' context similar to Tender but Hard
        if context.destroying_card and not context.blueprint then
            local target_card = context.destroying_card
            
            -- Check if it's a King (ID 13)
            if target_card:get_id() == 13 and not target_card.debuff then
                
                -- Increase the "Savings"
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_gain
                
                -- Visual Feedback for the Joker scaling
                card_eval_status_text(self, 'extra', nil, nil, nil, {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT
                })
                
                -- Return the destruction instruction to the engine
                return {
                    remove = true,
                    message = "Consumed",
                    colour = G.C.RED
                }
            end
        end
    end
end


if config.wildSolesJoker then
    -- Create Joker
    local wild_soles = {
        loc = {
            name = "Wild Soles",
            text = {
                "All played {V:1}#2#{} cards",
                "become {C:attention}Wild{} cards",
                "{s:0.8}Suit changes every hand",
                "{s:0.8}Removes other enhancements"
                
            }
        },
        ability_name = "Wild Soles",
        slug = "j_wild_soles",
        px = 142, 
        py = 190,
        ability = {
            name = "Wild Soles",
            set = "Joker",
            extra = {
                -- No extra values needed for this effect
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,  -- Wild card effects shouldn't be blueprintable
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(wild_soles)

    -- Set local variables for text display - following Ancient Joker pattern
    function SMODS.Jokers.j_wild_soles.loc_def(card)
        -- Initialize wild_card if it doesn't exist
        if not G.GAME or not G.GAME.current_round or not G.GAME.current_round.wild_card then
            if G.GAME and G.GAME.current_round then
                G.GAME.current_round.wild_card = {suit = "Spades"}
            else
                -- Fallback for when game isn't fully initialized
                return { 
                    "", 
                    localize("Spades", 'suits_singular'), 
                    colours = {G.C.SUITS.Spades}
                }
            end
        end
        
        return { 
            "", 
            localize(G.GAME.current_round.wild_card.suit, 'suits_singular'), 
            colours = {G.C.SUITS[G.GAME.current_round.wild_card.suit]}
        }
    end

    -- Calculate effect
    SMODS.Jokers.j_wild_soles.calculate = function(self, context)
        -- Transform cards to wild when they're scored
        if context.before and not context.individual and not context.blueprint then
            -- Initialize wild_card if it doesn't exist
            if not G.GAME.current_round.wild_card then
                G.GAME.current_round.wild_card = {suit = "Spades"}
            end
            
            local wild_cards = {}
            for k, v in ipairs(context.scoring_hand) do
                local card_matches_suit = false
                
                -- Check if Smeared Joker is active
                if next(find_joker('Smeared Joker')) then
                    -- Hearts and Diamonds are treated as the same suit
                    if (v.base.suit == 'Hearts' or v.base.suit == 'Diamonds') and 
                       (G.GAME.current_round.wild_card.suit == 'Hearts' or G.GAME.current_round.wild_card.suit == 'Diamonds') then
                        card_matches_suit = true
                    -- Spades and Clubs are treated as the same suit
                    elseif (v.base.suit == 'Spades' or v.base.suit == 'Clubs') and 
                           (G.GAME.current_round.wild_card.suit == 'Spades' or G.GAME.current_round.wild_card.suit == 'Clubs') then
                        card_matches_suit = true
                    end
                else
                    -- Normal suit matching when Smeared Joker is not active
                    card_matches_suit = (v.base.suit == G.GAME.current_round.wild_card.suit)
                end
                
                if card_matches_suit and v.config.center ~= G.P_CENTERS.m_wild then 
                    wild_cards[#wild_cards+1] = v
                    v:set_ability(G.P_CENTERS.m_wild, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end 
            if #wild_cards > 0 then 
                return {
                    message = "Wild!",
                    colour = G.C.FILTER,
                    card = self
                }
            end
        end
        
        -- Change suit at the end of the round
        if context.after and not context.blueprint and not context.individual and not context.repetition then            -- Initialize wild_card if it doesn't exist
            if not G.GAME.current_round.wild_card then
                G.GAME.current_round.wild_card = {suit = "Spades"}
            end
            
            local suits = {"Spades", "Hearts", "Clubs", "Diamonds"}
            
            -- Select new random suit, different from current
            local old_suit = G.GAME.current_round.wild_card.suit
            local new_suit = nil
            while not new_suit or new_suit == old_suit do
                new_suit = pseudorandom_element(suits, pseudoseed("wild_soles_suit"))
            end
            
            -- Update the game state like Ancient Joker does
            G.GAME.current_round.wild_card.suit = new_suit
            
            -- Show suit change message
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = new_suit,
                colour = G.C.SUITS[new_suit],
                delay = 0.8
            })
            
            -- Juice up the joker
            self:juice_up(0.3, 0.3)
        end
    end

    -- Initialize the wild_card in game state when joker is added
    local add_to_deck_wild_ref = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        add_to_deck_wild_ref(self, from_debuff)
        
        -- Initialize wild_card like ancient_card
        if self.ability.name == "Wild Soles" then
            if not G.GAME.current_round.wild_card then
                G.GAME.current_round.wild_card = {suit = "Spades"}
            end
        end
    end
end

----------------------------------------------
------------ CUSTOM HOOKS --------------------

-- Save the original game function
local ref_calculate_dollar_bonus = Card.calculate_dollar_bonus

-- Override the function
function Card:calculate_dollar_bonus()
    -- 1. Run original game logic first (handles Cloud 9, Golden Joker, Rocket, etc.)
    local val = ref_calculate_dollar_bonus(self)
    if val then return val end

    -- 2. Add Two Views Logic
    -- 'self' refers to the Joker card calling this function
    if self.ability.name == 'Undertable Beta' and not self.debuff then
        local count = 0
        
        -- Iterate through the ENTIRE deck (G.playing_cards)
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                -- Check for rank 2 (get_id() handles Stone cards correctly by returning -1)
                if v:get_id() == 12 then 
                    count = count + 1 
                end
            end
        end
        
        -- If we found any 2s, return the cash amount
        if count > 0 then
            return count * self.ability.extra
        end
    end
    if self.ability.name == 'The Investor' and not self.debuff then
        local divisor = self.ability.extra.divisor or 3
        -- Use G.GAME.dollars to get current money
        -- Use math.floor to match your example ($19 / 3 = 6.33 -> $6)
        if G.GAME.dollars > 0 then
            local bonus = math.floor(G.GAME.dollars / divisor)
            if bonus > 0 then
                return bonus
            end
        end
    end

    -- Return nil if no money is generated
end

if config.twoViewsJoker then
    local two_views = {
        loc = {
            name = "Undertable Beta",
            text = {
                "Earn {C:money}$#1#{} for each",
                "{C:attention}Queen{} in your {C:attention}deck{}",
                "at end of round",
                "{C:inactive}(Currently {C:money}$#2#{C:inactive})"
            }
        },
        ability_name = "Undertable Beta",
        slug = "j_feet_two_views",
        ability = { extra = 1 },
        rarity = 2,
        px = 142, 
        py = 190,
        cost = 6,
        unlocked = true,
        discovered = true,
        blueprint_compat = false, -- calculate_dollar_bonus does not support Blueprint by default
        eternal_compat = true,
        effect = "Money",
    }
    init_joker(two_views)

    -- loc_def is still needed to update the tooltip text (Currently $X)
    SMODS.Jokers.j_feet_two_views.loc_def = function(card)
        local count = 0
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v:get_id() == 12 then count = count + 1 end
            end
        end
        return { card.ability.extra, count * card.ability.extra }
    end
end
-- Add this to your config
-- paradoxStepsJoker = true,
if config.soleProviderJoker then
    local sole_provider = {
        loc = {
            name = "Sole Provider",
            text = {
                "At end of {C:attention}Shop{},",
                "destroy a random {C:attention}Consumable{}",
                "to create a random {C:dark_edition}Negative{}",
                "{C:attention}Consumable{}.",
                "{C:inactive}(Only if you have a consumable){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sole Provider",
        slug = "j_sole_provider",
        ability = {
            name = "Sole Provider",
            set = "Joker",
            extra = {}
        },
        rarity = 3, -- Rare
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(sole_provider)

    function SMODS.Jokers.j_sole_provider.loc_def(card)
        return {}
    end

    SMODS.Jokers.j_sole_provider.calculate = function(self, context)
        -- Trigger at the end of the shop (when clicking Next Round)
        if context.ending_shop then
            -- Check if we have any consumables to sacrifice
            if #G.consumeables.cards > 0 then
                G.E_MANAGER:add_event(Event({
                    func = function() 
                        -- 1. Select a random consumable to destroy
                        local destroyed_card = pseudorandom_element(G.consumeables.cards, pseudoseed("sole_provider_destroy"))
                        
                        -- 2. Determine type for the new card (matches pool of standard consumables)
                        local card_type = pseudorandom_element({"Tarot", "Planet", "Spectral"}, pseudoseed("sole_provider_type"))
                        
                        -- 3. Visual: Destroy the old card
                        destroyed_card:start_dissolve()
                        
                        -- 4. Logic: Create the new Negative card
                        local card = create_card(card_type, G.consumeables, nil, nil, nil, nil, nil, 'sole')
                        card:set_edition({negative = true}, true)
                        card:add_to_deck()
                        G.consumeables:emplace(card) 
                        
                        -- Visual feedback for the Joker
                        card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {
                            message = "Negative!",
                            colour = G.C.DARK_EDITION
                        }) 
                        return true
                    end
                }))
            end
        end
    end
end





if config.suitEnhancementJoker then
    -- Create Joker
    local suit_enhancement = {
        loc = {
            name = "Graceful Steps",
            text = {
                "Numbered {V:1}#2#{} cards gain a",
                "random {C:attention}Enhancement{} when scored",
                "on {C:attention}first hand{} of round", -- Updated description
                "{s:0.8}suit changes at end of round",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Graceful Steps",
        slug = "j_graceful_steps",
        -- Removed duplicate px/py
        ability = {
            name = "Graceful Steps",
            set = "Joker",
            extra = {
                enhanced_this_hand = {}  -- Track cards enhanced this hand
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,  -- Enhancement effects shouldn't be blueprintable
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(suit_enhancement)

    -- Available enhancements list
    local available_enhancements = {
        G.P_CENTERS.m_bonus,   -- Bonus (+30 chips)
        G.P_CENTERS.m_mult,    -- Mult (+4 mult)
        G.P_CENTERS.m_wild,    -- Wild (acts as any suit)
        G.P_CENTERS.m_glass,   -- Glass (x2 mult, 1/4 chance to destroy)
        G.P_CENTERS.m_steel,   -- Steel (x1.5 mult when in hand)
        G.P_CENTERS.m_stone,   -- Stone (+50 chips, no suit)
        G.P_CENTERS.m_gold,    -- Gold ($3 when played)
        G.P_CENTERS.m_lucky    -- Lucky (1/5 chance for +20 mult and $1)
    }

    -- Set local variables for text display - following Ancient Joker pattern
    function SMODS.Jokers.j_graceful_steps.loc_def(card)
        -- Initialize graceful_card if it doesn't exist
        if not G.GAME or not G.GAME.current_round or not G.GAME.current_round.graceful_card then
            if G.GAME and G.GAME.current_round then
                G.GAME.current_round.graceful_card = {suit = "Spades"}
            else
                -- Fallback for when game isn't fully initialized
                return { 
                    "", 
                    localize("Spades", 'suits_singular'), 
                    colours = {G.C.SUITS.Spades}
                }
            end
        end
        
        return { 
            "", 
            localize(G.GAME.current_round.graceful_card.suit, 'suits_singular'), 
            colours = {G.C.SUITS[G.GAME.current_round.graceful_card.suit]}
        }
    end

    -- Calculate effect
    SMODS.Jokers.j_graceful_steps.calculate = function(self, context)
        -- Reset enhanced cards tracker at start of hand
        if context.before and context.full_hand then
            self.ability.extra.enhanced_this_hand = {}
        end

        -- Check when individual cards are scored
        -- ADDED CHECK: G.GAME.current_round.hands_played == 0 ensures this only runs on the first hand
        if context.before and not context.individual and not context.blueprint and G.GAME.current_round.hands_played == 0 then
            -- Initialize graceful_card if it doesn't exist
            if not G.GAME.current_round.graceful_card then
                G.GAME.current_round.graceful_card = {suit = "Spades"}
            end
            
            local numbers = {}
            for k, v in ipairs(context.scoring_hand) do
                local card_matches_suit = false
                
                -- Check if Smeared Joker is active
                if next(find_joker('Smeared Joker')) then
                    -- Hearts and Diamonds are treated as the same suit
                    if (v.base.suit == 'Hearts' or v.base.suit == 'Diamonds') and 
                       (G.GAME.current_round.graceful_card.suit == 'Hearts' or G.GAME.current_round.graceful_card.suit == 'Diamonds') then
                        card_matches_suit = true
                    -- Spades and Clubs are treated as the same suit
                    elseif (v.base.suit == 'Spades' or v.base.suit == 'Clubs') and 
                           (G.GAME.current_round.graceful_card.suit == 'Spades' or G.GAME.current_round.graceful_card.suit == 'Clubs') then
                        card_matches_suit = true
                    end
                else
                    -- Normal suit matching when Smeared Joker is not active
                    card_matches_suit = (v.base.suit == G.GAME.current_round.graceful_card.suit)
                end
                
                if not v:is_face() and card_matches_suit and v.config.center == G.P_CENTERS.c_base then 
                    numbers[#numbers+1] = v
                    local random_enhancement = pseudorandom_element(available_enhancements, pseudoseed("graceful_enhancement"))
                    v:set_ability(random_enhancement, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end 
            if #numbers > 0 then 
                return {
                    message = "Enhanced!",
                    colour = G.C.RED,
                    card = self
                }
            end
        end
        
        -- Change suit at the end of the round
        if context.end_of_round and not context.individual and not context.repetition then
            -- Initialize graceful_card if it doesn't exist
            if not G.GAME.current_round.graceful_card then
                G.GAME.current_round.graceful_card = {suit = "Spades"}
            end
            
            local suits = {"Spades", "Hearts", "Clubs", "Diamonds"}
            
            -- Select new random suit, different from current
            local old_suit = G.GAME.current_round.graceful_card.suit
            local new_suit = nil
            while not new_suit or new_suit == old_suit do
                new_suit = pseudorandom_element(suits, pseudoseed("graceful_suit"))
            end
            
            -- Update the game state like Ancient Joker does
            G.GAME.current_round.graceful_card.suit = new_suit
            
            -- Reset enhanced cards tracker for next round
            self.ability.extra.enhanced_this_hand = {}
            
            -- Show suit change message
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = new_suit,
                colour = G.C.SUITS[new_suit],
                delay = 0.8
            })
            
            -- Juice up the joker
            self:juice_up(0.3, 0.3)
        end
    end

    -- Initialize the graceful_card in game state when joker is added
    local add_to_deck_graceful_ref = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        add_to_deck_graceful_ref(self, from_debuff)
        
        -- Initialize graceful_card like ancient_card
        if self.ability.name == "Graceful Steps" then
            if not G.GAME.current_round.graceful_card then
                G.GAME.current_round.graceful_card = {suit = "Spades"}
            end
        end
    end
end

if config.handySolesJoker then
    -- Create Joker
    local handy_soles = {
        loc = {
            name = "Handy Soles",
            text = {
                "Gains {C:mult}+#1#{} Mult",
                "if discarded hand",
                "is {C:attention}#2#{}",
                "{s:0.8}Hand changes at every round.{}",
                "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"

            }
        },
        px = 142, 
        py = 190,
        ability_name = "Handy Soles",
        slug = "j_handy_soles",
        px = 142, 
        py = 190,
        ability = {
            name = "Handy Soles",
            set = "Joker",
            extra = {
                mult_mod = 2,
                total_mult = 0,
                target_hand = "Pair", -- Initial default hand
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 5, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(handy_soles)

    -- Set local variables for UI display
    function SMODS.Jokers.j_handy_soles.loc_def(card)
        return { card.ability.extra.mult_mod, localize(card.ability.extra.target_hand, "poker_hands"), card.ability.extra.total_mult }
    end

    -- Calculate effect
    SMODS.Jokers.j_handy_soles.calculate = function(self, context)
        -- Apply the accumulated multiplier at the end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.total_mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.total_mult }
                    },
                    mult_mod = self.ability.extra.total_mult,
                    card = self
                }
            end
        end
        
        -- Choose new random hand at end of round (similar to To Do List Joker)
        if context.end_of_round and not context.individual and not context.repetition then
            -- Define the desired probability weights
            local hand_weights = {
                ["Pair"] = 15,
                ["Two Pair"] = 18,
                ["Full House"] = 15,
                ["Straight"] = 15,
                ["Three of a Kind"] = 12,
                ["Flush"] = 8,
                ["Four of a Kind"] = 6,
                ["Straight Flush"] = 3,
                ["Five of a Kind"] = 3,
                ["High Card"] = 5,
                ["Flush Five"] = 0,  -- Not specified by user, defaulting to 0
                ["Flush House"] = 0 -- Not specified by user, defaulting to 0
            }

            local weighted_pool = {}
            local total_weight = 0

            -- Create a weighted pool only from hands that are visible
            for hand_name, v in pairs(G.GAME.hands) do
                if v.visible and hand_weights[hand_name] and hand_weights[hand_name] > 0 then
                    local weight = hand_weights[hand_name]
                    weighted_pool[hand_name] = weight
                    total_weight = total_weight + weight
                end
            end
            
            -- Fallback if weighted_pool is empty (e.g., only invisible hands or non-weighted hands are visible)
            if total_weight == 0 then
                for hand_name, v in pairs(G.GAME.hands) do
                    if v.visible then
                        weighted_pool[hand_name] = 1
                        total_weight = total_weight + 1
                    end
                end
            end

            -- If still no hands, fallback to Pair
            if total_weight == 0 then
                weighted_pool["Pair"] = 1
                total_weight = 1
            end

            local old_hand = self.ability.extra.target_hand
            self.ability.extra.target_hand = nil
            
            local attempt = 0
            -- Keep trying until we get a *different* hand, or 100 attempts pass
            while (not self.ability.extra.target_hand or self.ability.extra.target_hand == old_hand) and attempt < 100 do
                local poll = pseudorandom("handy_soles_new_hand_"..attempt) * total_weight
                local current_weight = 0
                
                -- Need to sort the pool to make weighted selection deterministic
                local sorted_pool = {}
                for k, v in pairs(weighted_pool) do table.insert(sorted_pool, k) end
                table.sort(sorted_pool)

                for _, hand_name in ipairs(sorted_pool) do
                    local weight = weighted_pool[hand_name]
                    if poll >= current_weight and poll < current_weight + weight then
                        self.ability.extra.target_hand = hand_name
                        break
                    end
                    current_weight = current_weight + weight
                end
                
                -- Fallback if something went wrong during selection
                if not self.ability.extra.target_hand then
                    self.ability.extra.target_hand = sorted_pool[1] or "Pair"
                end

                attempt = attempt + 1
            end
            
            -- If we're still stuck on the old hand after 100 tries (e.g. only one hand visible), just pick another one
            if self.ability.extra.target_hand == old_hand then
                local sorted_pool = {}
                for k, v in pairs(weighted_pool) do table.insert(sorted_pool, k) end
                table.sort(sorted_pool)
                
                for i, hand_name in ipairs(sorted_pool) do
                    if hand_name ~= old_hand then
                        self.ability.extra.target_hand = hand_name
                        break
                    end
                end
                -- If all visible hands are the old hand, just keep it
                if self.ability.extra.target_hand == old_hand then
                    self.ability.extra.target_hand = sorted_pool[1] or "Pair"
                end
            end
            
            -- Juice and show the new target hand name for player clarity
            self:juice_up(0.3, 0.3)
            attention_text({
                text = localize(self.ability.extra.target_hand, "poker_hands"),
                scale = 0.5,
                hold = 1.0,
                backdrop_colour = G.C.MULT,
                align = 'bm',
                major = self,
                offset = {x = 0, y = 0.15 * G.CARD_H}
            })
        end
    end
    
    
    -- *** CORE MODIFICATION: Wrap discard function to check hand type ONCE ***
    local original_discard_cards_from_highlighted = G.FUNCS.discard_cards_from_highlighted
    G.FUNCS.discard_cards_from_highlighted = function(e, hook)
        local highlighted_cards = {}
        for _, card in ipairs(G.hand.highlighted) do
            table.insert(highlighted_cards, card) -- Copy the list before it's cleared
        end
        local highlighted_count = #highlighted_cards

        -- Step 1: Execute original discard logic
        local result = original_discard_cards_from_highlighted(e, hook)
        
        -- Step 2: Check for Handy Soles Joker and apply bonus if hand matches
        if highlighted_count > 0 and G.jokers and G.jokers.cards then
            local discarded_hand_name, _, poker_hands_full = G.FUNCS.get_poker_hand_info(highlighted_cards)

            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.name == "Handy Soles" and not joker.debuff then
                    local target_hand = joker.ability.extra.target_hand
                    
                    if discarded_hand_name == target_hand then
                        -- Apply multiplier gain
                        local mult_gain = joker.ability.extra.mult_mod 
                        joker.ability.extra.total_mult = joker.ability.extra.total_mult + mult_gain
                        
                        -- Show upgrade message once for the discard action
                        G.E_MANAGER:add_event(Event({
                            trigger = "before",
                            delay = 0.1, -- Delay message so player sees discard animation first
                            func = function()
                                card_eval_status_text(joker, "extra", nil, nil, nil, {
                                    message = localize('k_upgrade_ex'),
                                    colour = G.C.MULT
                                })
                                return true
                            end
                        }))
                    end
                    -- Do not break, allow other Jokers to check discard
                end
            end
        end
        
        return result
    end
end

if config.jestersGaitJoker then
    local jesters_gait = {
        loc = {
            name = "Jester's Gait",
            text = {
                "When {C:attention}Blind{} is selected,",
                "create a {C:tarot}The Fool{} card",
                "{C:inactive}(Must have room){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Jester's Gait",
        slug = "j_jesters_gait",
        ability = {
            name = "Jester's Gait",
            set = "Joker",
            extra = {}
        },
        rarity = 2, -- Uncommon (Specialist/Accelerator)
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(jesters_gait)

    function SMODS.Jokers.j_jesters_gait.loc_def(card)
        return {}
    end

    SMODS.Jokers.j_jesters_gait.calculate = function(self, context)
        -- Trigger when Blind is selected
        if context.setting_blind and not self.getting_sliced then
            -- Check for space in consumable area
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                
                G.E_MANAGER:add_event(Event({
                    func = function()
                        -- Create 'The Fool' (c_fool) specifically
                        local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_fool', 'jesters_gait')
                        card:add_to_deck()
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                }))

                -- Visual Feedback
                card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {
                    message = localize('k_plus_tarot'),
                    colour = G.C.PURPLE
                })
            else
                -- Visual Feedback for No Space
                card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {
                    message = localize('k_no_space_ex'),
                    colour = G.C.RED
                })
            end
        end
    end
end

if config.glassSlipperJoker then
    local glass_slipper = {
        loc = {
            name = "Cleaner",
            text = {
                "After defeating a {C:attention}Boss Blind{},",
                "create a {C:dark_edition}Negative{} {C:attention}Seltzer{}"            
            }
        },
        px = 142, py = 190,
        ability_name = "Glass Slipper",
        slug = "j_glass_slipper",
        ability = { name = "Glass Slipper", set = "Joker", extra = {} },
        rarity = 3, -- Uncommon
        cost = 6,
        set = "Feet Joker",
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(glass_slipper)

    function SMODS.Jokers.j_glass_slipper.loc_def(card)
        return {}
    end

    SMODS.Jokers.j_glass_slipper.calculate = function(self, card, context)
        -- BULLETPROOF FALLBACK: Safely assign the Card Entity and Context Table 
        local _card = context and card or self
        local _context = context or card

        -- Check for end of round, and prevent it from triggering on individual scoring/repetitions
        if _context.end_of_round and not _context.individual and not _context.repetition then
            
            -- Confirm the defeated blind was a Boss Blind
            if G.GAME.blind.boss then
                
                -- Spawn the Joker event
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        -- FIX: Changed 'j_seltzer' to 'j_selzer' to match Balatro's internal key
                        local new_card = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_selzer', 'sltz')
                        
                        -- Apply Negative BEFORE adding to deck so it bypasses Joker limits
                        new_card:set_edition({negative = true}, true)
                        
                        -- Add to deck and emplace
                        new_card:add_to_deck()
                        G.jokers:emplace(new_card)
                        
                        return true
                    end
                }))

                -- Using SMODS native return table to display the message and handle UI juice
                return {
                    message = "Clean them.",
                    colour = G.C.BLUE,
                    card = _card
                }
            end
        end
    end
end
if config.asceticSoleJoker then
    local ascetic_sole = {
        loc = {
            name = "Ascetic Sole",
            text = {
                "First played hand of round",
                "upgrades {C:attention}poker hand{}",
                "by {C:attention}#1#{} levels",
                "{C:red}-1{} level for each",
                "other {C:attention}Joker{} held",
                "{C:inactive}(Negatives excluded){}",
                "{C:inactive}(Currently {C:planet}+#2#{C:inactive} Levels){}"
            }
        },
        ability_name = "Ascetic Sole",
        slug = "j_ascetic_sole",
        ability = {
            name = "Ascetic Sole",
            set = "Joker",
            extra = {
                base_gain = 4, -- Maximum possible gain
            }
        },
        px = 142, 
        py = 190,
        rarity = 2, -- Common
        cost = 6,   -- Slightly higher cost due to immense scaling potential
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(ascetic_sole)

    -- Helper to count non-negative jokers
    local function count_active_jokers(current_card)
        local count = 0
        if G.jokers and G.jokers.cards then
            for _, v in ipairs(G.jokers.cards) do
                -- Check if it's a Joker and NOT Negative
                if v ~= current_card and v.ability.set == 'Joker' and (not v.edition or not v.edition.negative) then
                    count = count + 1
                end
            end
        end
        return count
    end

    function SMODS.Jokers.j_ascetic_sole.loc_def(card)
        local others = count_active_jokers(card)
        -- Calculate current gain (Max 4, Min 0)
        local current_gain = math.max(0, card.ability.extra.base_gain - others)
        
        return { 
            card.ability.extra.base_gain,
            current_gain
        }
    end

    SMODS.Jokers.j_ascetic_sole.calculate = function(self, context)
        -- Trigger on the FIRST hand played (Before scoring)
        if context.before and G.GAME.current_round.hands_played == 0 then
            
            local others = count_active_jokers(self)
            local gain = math.max(0, self.ability.extra.base_gain - others)

            if gain > 0 then
                -- Visual Feedback
                card_eval_status_text(self, 'extra', nil, nil, nil, {
                    message = "+" .. gain .. " Lvls",
                    colour = G.C.SECONDARY_SET.Planet
                })
                
                -- Apply the Level Up 'gain' times
                -- We loop this to ensure compatibility with standard level_up_hand functions
                for i = 1, gain do
                    level_up_hand(self, context.scoring_name, true)
                end
                
                return nil -- Logic handled manually above
            end
        end
    end
end

if config.queenretriggerJoker then
    -- Define the new Joker
  local retrigger_queen_joker = {
      loc = {
          name = "Queen's Grace",
          text = {
              "Retrigger {C:attention}Queens{}",
              "{C:attention}#1#X{} times"
          }
      },
      ability_name = "Queen's Grace",
      
      slug = "j_queens_grace",
      px = 142, 
        py = 190,
      ability = {
          name = "Queen's Grace",
          set = "Joker",
          extra = {
              req = 2,
          }
      },
      rarity = 2,  -- Common
      cost = 6, set = "Feet Joker",
      unlocked = true,
      discovered = true,
      blueprint_compat = true,
      eternal_compat = true,
      
  }
  
  -- Initialize Joker
  init_joker(retrigger_queen_joker)

  -- Set local variables
  function SMODS.Jokers.j_queens_grace.loc_def(card)
      return { card.ability.extra.req }
  end
  
  -- Calculate
  SMODS.Jokers.j_queens_grace.calculate = function(self, context)
      if context.cardarea == G.play and context.repetition then
          if context.other_card:get_id() == 12 then  -- 12 is Queen
              return {
                  message = localize("k_again_ex"),
                  repetitions = self.ability.extra.req,
                  card = context.other_card
              }
          end
      end
  end

  end
if config.lowestCardMoneyJoker then
    -- Create Joker
    local lowest_card_money = {
        loc = {
            name = "Penny Pincher",
            text = {
                "At the end of the round, gain",
                "{C:money}money{} equal to",
                "the value of your lowest card"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Penny Pincher",
        slug = "j_penny_pincher",
        px = 142, 
        py = 190,
        ability = {
            name = "Penny Pincher",
            set = "Joker",
            extra = {
                extra = 1,
            }
        },
        rarity = 2,  -- Common rarity
        cost = 5, set = "Feet Joker",    -- Standard cost for a common joker
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(lowest_card_money)
    

    -- Set local variables
    function SMODS.Jokers.j_penny_pincher.loc_def(card)
        return { card.ability.extra.extra }
    end

    -- Calculate
    SMODS.Jokers.j_penny_pincher.calculate = function(self, context)
        -- Only trigger at the end of the round
        if context.end_of_round and not context.individual and not context.repetition then
            -- Find the lowest card in the player's hand
            local lowest_value = 15  -- Higher than any card (Ace is 14)
            local lowest_card = nil
            
            for _, card in ipairs(G.hand.cards) do
                -- Safety check: ensure card exists and has proper base data
                if card and card.base and card.base.id then
                    -- Use base.id instead of get_id() to avoid enhancement issues
                    local card_value = card.base.id
                    
                    -- Additional safety: ensure card_value is a valid number
                    if type(card_value) == "number" and card_value > 0 and card_value <= 14 then
                        if card_value < lowest_value then
                            lowest_value = card_value
                            lowest_card = card
                        end
                    end
                end
            end
            
            -- Calculate money reward only if we found a valid card
            if lowest_card and lowest_value < 15 then
                local money_reward = lowest_value * self.ability.extra.extra
                
                -- Additional safety check: ensure money_reward is reasonable
                if money_reward > 0 and money_reward <= 100 then  -- Cap at reasonable amount
                    -- Give money to player
                    ease_dollars(money_reward)
                    
                    -- Show message with reward amount
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = "$" .. money_reward,
                        colour = G.C.MONEY
                    })
                    
                    -- Highlight the lowest card 
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if lowest_card and not lowest_card.REMOVED then
                                lowest_card:juice_up(0.3, 0.5)
                            end
                            return true
                        end
                    }))
                
                end
            end
        end
    end

end
if config.filthyneedsJoker then
    -- Create Joker
    local filthy_needs = {
        loc = {
            name = "Filthy Needs",
            text = {
                "{X:mult,C:white}X#1#{} Mult, gains {X:mult,C:white}X#2#{}",
                "Mult per {C:attention}#4# cards{} scored",
                "{C:inactive}(Currently {C:attention}#3# {C:inactive}cards scored)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Filthy Needs",
        slug = "j_filthy_needs",
        px = 142, 
        py = 190,
        ability = {
            extra = {
                Xmult = 1,
                Xmult_mod = 0.2,
                card_count = 0,
                req = 7,
            }
        },
        rarity = 2,
        cost = 6, 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        

    }

    -- Initialize Joker
    init_joker(filthy_needs)

    -- Set local variables
    function SMODS.Jokers.j_filthy_needs.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod, card.ability.extra.card_count,
            card.ability.extra.req }
    end

    -- Calculate
    SMODS.Jokers.j_filthy_needs.calculate = function(self, context)
        -- Add xmult for every played card
        if context.individual and context.cardarea == G.play and not context.blueprint and not context.brainstorm then
            self.ability.extra.card_count = self.ability.extra.card_count + 1
            if self.ability.extra.card_count >= 7 then
                self.ability.extra.card_count = 0
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    colour = G.C.MULT
                })
            end
        end

        -- Apply xmult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
    end

end

if config.negativeSoulJoker then
    -- Create Joker
    local negative_soul = {
        loc = {
            name = "Negative Soul",
            text = {
                "After beating a {C:attention}Boss Blind{}, has a",
                "{C:green}#3# in #2#{} chance to make a",
                "random Joker {C:dark_edition}negative{}."
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Negative Soul",
        slug = "j_feet_negative_soul", 
        ability = {
            name = "Negative Soul",
            set = "Joker",
            extra = {
                possible_targets = 0,
                odds = 3,
            }
        },
        rarity = 3,
        cost = 8, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(negative_soul)

    -- Set local variables with dynamic calculation
    function SMODS.Jokers.j_feet_negative_soul.loc_def(card)
        -- Count possible targets for dynamic display
        local possible_targets = 0
        if G.jokers and G.jokers.cards then
            for _, joker in ipairs(G.jokers.cards) do
                if joker ~= card and joker.ability.set == "Joker" and not joker.edition then
                    possible_targets = possible_targets + 1
                end
            end
        end
        
        -- Update the count
        card.ability.extra.possible_targets = possible_targets
        
        return { 
            card.ability.extra.possible_targets, 
            card.ability.extra.odds, 
            "" .. (G.GAME and G.GAME.probabilities.normal or 1) 
        }
    end

    -- Calculate
    SMODS.Jokers.j_feet_negative_soul.calculate = function(self, context)
        -- This effect triggers at the end of the round
        if context.end_of_round and not context.individual and not context.repetition then
            -- Check if the blind that was just beaten was a boss blind
            if G.GAME.blind and G.GAME.blind.boss then
                if pseudorandom("negative_soul_trigger") < G.GAME.probabilities.normal / self.ability.extra.odds then
                    local possible_jokers = {}
                    for _, joker in ipairs(G.jokers.cards) do
                        -- Find jokers that are not this one and don't have an edition
                        if joker ~= self and joker.ability.set == "Joker" and not joker.edition then
                            table.insert(possible_jokers, joker)
                        end
                    end 
                    
                    if #possible_jokers > 0 then
                        -- Pick a random joker to convert
                        local target_joker = pseudorandom_element(possible_jokers, pseudoseed("negative_soul_target"))
                        
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                -- Convert to negative. The base game's set_edition function automatically handles joker slot increase.
                                target_joker:set_edition({ negative = true }, true)
                                
                                card_eval_status_text(self, "extra", nil, nil, nil, {
                                    message = localize("k_upgrade_ex"),
                                    colour = G.C.DARK_EDITION
                                })
                                return true
                            end
                        }))
                    end
                else
                    -- Failed probability roll
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = localize("k_nope_ex"),
                        colour = G.C.JOKER_GREY,
                    })
                end
            end
        end
    end
end

if config.barefootStepsJoker then
    -- Create Joker
    local barefoot_steps = {
        loc = {
            name = "Barefoot Steps",
            text = {
                "{C:mult}+#1#{} Mult if {C:attention}first{} hand",
                "is {C:attention}#3#{} scored cards",
                "{s:0.8}Requirement changes each round",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Barefoot Steps",
        slug = "j_barefoot_steps",
        px = 142, 
        py = 190,
        ability = {
            name = "Barefoot Steps",
            set = "Joker",
            extra = {
                mult_mod = 3,
                mult = 0,
                target_cards = 3,  -- Starting requirement
            }
        },
        rarity = 1,  -- Common rarity
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(barefoot_steps)

    -- Set local variables for text display
    function SMODS.Jokers.j_barefoot_steps.loc_def(card)
        return { 
            card.ability.extra.mult_mod, 
            card.ability.extra.mult,
            card.ability.extra.target_cards 
        }
    end

    -- Calculate effect
    SMODS.Jokers.j_barefoot_steps.calculate = function(self, context)
        -- Check if played hand has exactly the target number of cards
        if context.before and context.full_hand and not context.blueprint then
            if #context.scoring_hand == self.ability.extra.target_cards and G.GAME.current_round.hands_played == 0 then
                self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_mod
                
                -- Show upgrade message
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = "Upgrade",
                    colour = G.C.MULT
                })
            end
        end

        -- Apply accumulated mult at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end

        -- Change target at end of round
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            -- Random target between 2-5 cards
            local possible_targets = {2, 3, 4, 5}
            local old_target = self.ability.extra.target_cards
            
            -- Ensure we get a different target
            repeat
                self.ability.extra.target_cards = pseudorandom_element(possible_targets, pseudoseed("barefoot_steps"))
            until self.ability.extra.target_cards ~= old_target or #possible_targets == 1
            
            -- Show the new requirement
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = self.ability.extra.target_cards .. " cards",
                colour = G.C.FILTER
            })
        end
    end
end
if config.matriarchJoker then
    local matriarch = {
        loc = {
            name = "The Matriarch",
            text = {
                "Each scored {C:attention}Queen{}",
                "gives {C:mult}+#1#{} Mult"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Matriarch",
        slug = "j_matriarch",
        ability = {
            name = "The Matriarch",
            set = "Joker",
            extra = 8
        },
        rarity = 1, -- Common: The Savings Account
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(matriarch)

    -- Localization variables
    function SMODS.Jokers.j_matriarch.loc_def(card)
        return { card.ability.extra }
    end

    -- Scoring Logic
    SMODS.Jokers.j_matriarch.calculate = function(self, context)
        -- Trigger for each individual card scored in the played hand
        if context.individual and context.cardarea == G.play then
            -- Check if the card is a Queen (ID 12)
            if context.other_card:get_id() == 12 and not context.other_card.debuff then
                return {
                    mult = self.ability.extra,
                    card = self
                }
            end
        end
    end
end


if config.investorJoker then
    local investor = {
        loc = {
            name = "The Investor",
            text = {
                "Earn {C:money}$1{} for every",
                "{C:money}$#1#{} you have",
                "{C:inactive}(Currently {C:money}$#2#{C:inactive})"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Investor",
        slug = "j_investor",
        ability = {
            name = "The Investor",
            set = "Joker",
            extra = {
                divisor = 3, -- $1 for every $3
            }
        },
        rarity = 2, -- Common (Savings Account Philosophy)
        cost = 6, 
        unlocked = true, 
        discovered = true,
        blueprint_compat = false, 
        eternal_compat = true,
        effect = "Money", -- Important for UI
        
    }

    init_joker(investor)

    -- Dynamic Description updates based on current money
    function SMODS.Jokers.j_investor.loc_def(card)
        local divisor = card.ability.extra.divisor
        local current_money = G.GAME.dollars or 0
        -- We calculate potential payout here for the tooltip
        -- Using max(0) to prevent negative payout if in debt
        local payout = math.floor(math.max(0, current_money) / divisor)
        
        return { divisor, payout }
    end

    -- NOTE: We do NOT use SMODS.Jokers.j_investor.calculate for the money logic.
    -- We use the Card:calculate_dollar_bonus override below.
end
if config.taxCollectorJoker then
    -- Create Joker
    local tax_collector = {
        loc = {
            name = "Tax Collector",
            text = {
                "Gives {C:green}$#1#{}, {C:red}$#2#{} or {C:legendary}$#3#",
                "per Joker with the",
                "respective {C:attention}rarity",
                "at end of round"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Tax Collector",
        slug = "j_tax_collector",
        px = 142, 
        py = 190,
        ability = {
            extra = {
                dollars = 1,
 
            }
        },
        rarity = 1,
        cost = 4, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,

    }

    -- Initialize Joker
    init_joker(tax_collector)


    -- Set local variables
    function SMODS.Jokers.j_tax_collector.loc_def(card)
        return { card.ability.extra.dollars, card.ability.extra.dollars * 2, card.ability.extra.dollars * 4 }
    end

    -- Calculate
    SMODS.Jokers.j_tax_collector.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition then
            for _, v in ipairs(G.jokers.cards) do
                -- Give dollars for every Joker, based on their rarity
                if v ~= self and v.config.center.rarity > 1 then
                    G.E_MANAGER:add_event(Event({
                        trigger = "after",
                        delay = 0.7,
                        func = (function()
                            -- Give dollars
                            local dollars = self.ability.extra.dollars * (v.config.center.rarity - 1)
                            if v.config.center.rarity == 4 then
                                dollars = dollars + 1
                            end
                            ease_dollars(dollars, true)

                            -- Show message
                            card_eval_status_text(v, "extra", nil, nil, nil, {
                                message = localize("$") .. dollars,
                                dollars = dollars,
                                colour = G.C.MONEY,
                                instant = true
                            })

                            -- Animate cards
                            if v ~= self then
                                v:juice_up(0.5, 0.5)
                            end
                            self:juice_up(0.5, 0.5)
                            return true
                        end)
                    }))
                end
            end
        end
    end

end
if config.cosmicDevourerJoker then
    -- Create Joker
    local cosmic_devourer = {
        loc = {
            name = "Cosmic Devourer",
            text = {
                "When a {C:attention}Blind{} is selected,",
                "{S:1.1,C:red,E:2}destroys{} all your {C:planet}Planet{} cards",
                "Gains {X:mult,C:white}X#2#{} Mult per",
                "{C:planet}Planet",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Cosmic Devourer",
        slug = "j_cosmic_devourer",
        px = 142, 
        py = 190,
        ability = {
            name = "Cosmic Devourer",
            set = "Joker",
            extra = {
                Xmult = 1,                  -- Starting multiplier
                Xmult_mod = 0.2,           -- Amount added per planet
                processing_blind = false,

            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 5, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(cosmic_devourer)


    -- Set local variables for text display
    function SMODS.Jokers.j_cosmic_devourer.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end

    -- Calculate effect
    SMODS.Jokers.j_cosmic_devourer.calculate = function(self, context)
        -- When a blind is selected - **CHECK THE FLAG**
        if context.setting_blind and not self.getting_sliced and not self.ability.extra.processing_blind then
            -- **SET THE FLAG** to prevent re-entry during this blind selection
            self.ability.extra.processing_blind = true -- [cite: 2767]

            -- Check if there are Planet cards to destroy
            local planets_to_destroy = {}
            for i, card in ipairs(G.consumeables.cards) do
                if card.ability.set == "Planet" then
                    table.insert(planets_to_destroy, {index = i, card = card})
                end
            end -- [cite: 2767]

            -- If there are planets to destroy
            if #planets_to_destroy > 0 then
                -- Calculate total amount to add to Xmult
                local xmult_gain = self.ability.extra.Xmult_mod * #planets_to_destroy -- [cite: 2769]

                -- Schedule sequential destruction events
                for i, planet_data in ipairs(planets_to_destroy) do
                    -- Create an event for each planet with increasing delays
                    G.E_MANAGER:add_event(Event({ -- [cite: 2770]
                        delay = 0.4 * (i - 1), -- Sequential delay for each planet
                        func = function()
                            local card = planet_data.card
                            -- Start the dissolve animation
                            play_sound("tarot1") -- [cite: 2771]
                            card:start_dissolve() -- [cite: 2771]


                            -- Remove card after animation starts
                            G.E_MANAGER:add_event(Event({ -- [cite: 2773]
                                delay = 0.3,
                                func = function()
                                    -- Find the card again as index may have changed
                                    for j, c in ipairs(G.consumeables.cards) do
                                        if c == card then
                                            table.remove(G.consumeables.cards, j) -- [cite: 2775]
                                            break
                                        end
                                    end -- [cite: 2776]
                                    return true
                                end -- [cite: 2777]
                            }))

                            -- Show individual destruction message
                            
                            return true
                        end -- [cite: 2780]
                    }))
                end

                -- After all planets are destroyed, update the multiplier
                G.E_MANAGER:add_event(Event({ -- [cite: 2781]
                    delay = (0.4 * #planets_to_destroy) + 0.5, -- Wait until after all planets are destroyed
                    func = function()
                        -- Increase multiplier and show message
                        self.ability.extra.Xmult = self.ability.extra.Xmult + xmult_gain -- [cite: 2782]
                        card_eval_status_text(self, "extra", nil, nil, nil, { -- [cite: 2783]
                            message = localize {
                                type = "variable",
                                key = "a_xmult",
                                vars = { self.ability.extra.Xmult }
                            },
                            colour = G.C.MULT -- [cite: 2784]
                        })
                        -- **RESET THE FLAG** after processing is complete
                        self.ability.extra.processing_blind = false
                        return true
                    end -- [cite: 2785]
                }))
            else
                -- If no planets were found, reset the flag immediately
                self.ability.extra.processing_blind = false
            end
        elseif not context.setting_blind then
             -- Reset the flag if we are no longer in the setting_blind context
             -- This handles cases where the context changes before the final event runs
            self.ability.extra.processing_blind = false
        end

        -- Apply accumulated multiplier at the end of scoring
        if SMODS.end_calculate_context(context) then -- [cite: 2786]
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    }, -- [cite: 2787]
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
    end
  
end

if config.uniqueJokerCollector then
    -- Initialize run tracking when a new game starts
    local original_init_game_object = Game.init_game_object
    function Game:init_game_object()
        local game_obj = original_init_game_object(self)
        -- Initialize our custom tracking table for jokers you've owned
        game_obj.jokers_owned_this_run = {}
        return game_obj
    end
    
    -- Also initialize for existing saves that don't have this field
    local original_start_run = Game.start_run
    function Game:start_run(args)
        local result = original_start_run(self, args)
        -- Ensure the tracking table exists
        if not G.GAME.jokers_owned_this_run then
            G.GAME.jokers_owned_this_run = {}
        end
        return result
    end

    -- Create Joker
    local unique_joker_collector = {
        loc = {
            name = "Infatuated",
            text = {
                "Gains {C:mult}+#1#{} Mult for each",
                "unique {C:attention}Joker{} owned",
                "during this run",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Foot Collector",
        slug = "j_collector",
        px = 142, 
        py = 190,
        ability = {
            name = "Foot Collector",
            set = "Joker",
            extra = {
                mult_mod = 1,
                mult = 0,
            }
        },
        rarity = 1,
        cost = 3, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(unique_joker_collector)
    
    -- Set local variables for text display (dynamically updated)
    function SMODS.Jokers.j_collector.loc_def(card)
        -- Dynamically calculate unique count
        local unique_count = 0
        if G.GAME and G.GAME.jokers_owned_this_run then
            for key, _ in pairs(G.GAME.jokers_owned_this_run) do
                -- Only count other jokers. Check that the key exists in P_CENTERS for safety.
                if key ~= card.config.center.key and G.P_CENTERS[key] and G.P_CENTERS[key].set == "Joker" then
                    unique_count = unique_count + 1
                end
            end
        end
        
        local mult = unique_count * card.ability.extra.mult_mod
        
        -- Update the card's internal value to match the display
        card.ability.extra.mult = mult
        
        return { card.ability.extra.mult_mod, mult }
    end

    -- Calculate effect - APPLY THE MULTIPLIER
    SMODS.Jokers.j_collector.calculate = function(self, context)
        -- Apply multiplier during the Joker Phase of the scoring context
        if SMODS.end_calculate_context(context) then
            -- Get the current multiplier (which was updated by loc_def or track_new_joker)
            local mult = self.ability.extra.mult
            
            if mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { mult }
                    },
                    mult_mod = mult,
                    card = self
                }
            end
        end
    end
    
    -- Function to track a new joker and notify collectors
    local function track_new_joker(joker_key, new_joker_card)
        if not G.GAME.jokers_owned_this_run then
            G.GAME.jokers_owned_this_run = {}
        end
        
        -- Only track unique, existing Joker keys
        if G.P_CENTERS[joker_key] and G.P_CENTERS[joker_key].set == "Joker" and not G.GAME.jokers_owned_this_run[joker_key] then
            G.GAME.jokers_owned_this_run[joker_key] = true
            
            -- Notify all collector jokers about the new addition
            if G.jokers and G.jokers.cards then
                for _, collector in ipairs(G.jokers.cards) do
                    if collector.ability.name == "Foot Collector" and collector ~= new_joker_card then
                        
                        -- START FIX: Recalculate and store the new mult value
                        local unique_count = 0
                        if G.GAME and G.GAME.jokers_owned_this_run then
                            for key, _ in pairs(G.GAME.jokers_owned_this_run) do
                                -- Add safety check here too
                                if key ~= collector.config.center.key and G.P_CENTERS[key] and G.P_CENTERS[key].set == "Joker" then 
                                    unique_count = unique_count + 1
                                end
                            end
                        end
                        local new_mult = unique_count * collector.ability.extra.mult_mod
                        collector.ability.extra.mult = new_mult -- This is the missing line
                        -- END FIX

                        -- Show notification
                        G.E_MANAGER:add_event(Event({
                            trigger = "after",
                            delay = 0.2,
                            func = function()
                                if collector and collector.ability then -- Add safety check
                                    card_eval_status_text(collector, "extra", nil, nil, nil, {
                                        message = "Upgrade!",
                                        colour = G.C.MULT
                                    })
                                    collector:juice_up(0.3, 0.5)
                                end
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end
    
    -- Hook into jokers being added to deck to track ownership
    local add_to_deck_original = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        -- Call original function first
        add_to_deck_original(self, from_debuff)
        
        -- Track jokers when they're added to your deck (purchased, spawned, etc.)
        if self.added_to_deck and self.ability and self.ability.set == "Joker" and self.config and self.config.center and G.GAME then
            local joker_key = self.config.center.key
            track_new_joker(joker_key, self)
        end
    end
    
    -- Added cleanup hook when a card is removed to ensure we re-track later if it's the Collector card itself being re-added.
    local remove_original = Card.remove
    function Card:remove()
        if self.ability and self.ability.name == "Foot Collector" then
            self.collector_initialized = false
        end
        return remove_original(self)
    end
end


if config.tenderHardJoker then
    local tender_hard = {
        loc = {
            name = "Tender but Hard",
            text = {
                "If {C:attention}first hand{} of round is",
                "a {C:attention}single card{}, destroy it and",
                "gain {C:mult}Mult{} equal to {C:attention}1/4{}",
                "of its total {C:chips}Chip{} value",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Tender but Hard",
        slug = "j_tender_hard",
        ability = {
            name = "Tender but Hard",
            set = "Joker",
            extra = {
                mult = 0
            }
        },
        rarity = 3, -- Rare (The Payoff)
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(tender_hard)

    function SMODS.Jokers.j_tender_hard.loc_def(card)
        return { card.ability.extra.mult }
    end

    SMODS.Jokers.j_tender_hard.calculate = function(self, context)
        -- 1. Destruction Logic (The Sacrifice)
        -- Triggers when the game checks for cards to destroy (like Trading Card)
        if context.destroying_card and not context.blueprint then
            -- Condition: First hand of the round AND only 1 card played
            if G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 then
                local card = context.destroying_card
                
                -- Calculate Total Chip Value of the card
                local chip_val = card.base.nominal or 0
                
                -- Add Ability Bonus (Stone Cards, Bonus Cards, etc.)
                if card.ability and card.ability.bonus then
                    chip_val = chip_val + card.ability.bonus
                end
                
                -- Add Permanent Bonus (From Painted spectrals/jokers)
                if card.ability and card.ability.perma_bonus then
                    chip_val = chip_val + card.ability.perma_bonus
                end

                -- Add Edition Bonus (Foil gives +50)
                if card.edition and card.edition.foil then
                    chip_val = chip_val + 50
                end

                -- Calculate Gain (Half value)
                local gain = math.floor(chip_val / 4)
                
                if gain > 0 then
                    self.ability.extra.mult = self.ability.extra.mult + gain
                    
                    -- Visual Feedback for the Upgrade
                    card_eval_status_text(self, 'extra', nil, nil, nil, {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.MULT
                    })
                    
                    -- Return true to destroy the card
                    return {
                        remove = true,
                        message = "Hardened!",
                        colour = G.C.RED
                    }
                end
            end
        end

        -- 2. Scoring Logic (The Payoff)
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={self.ability.extra.mult}},
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
end


if config.walkInTheParkJoker then
    -- Create Joker
    local walk_in_park = {
        loc = {
            name = "Walk in the Park",
            text = {
                "Gains {C:chips}+#1#{} Chips when",
                "a hand is played",
                "{C:red}Resets{} at end of round",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Walk in the Park",
        slug = "j_walk_park",
        ability = {
            name = "Walk in the Park",
            set = "Joker",
            extra = {
                chips = 60,      -- Current Chips (starts at base)
                chip_gain = 60,  -- Scaling per hand
                base_chips = 60  -- Reset baseline
            }
        },
        rarity = 1,  -- Common (Investment Curve: Short term investment for the round)
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(walk_in_park)

    -- Set local variables
    function SMODS.Jokers.j_walk_park.loc_def(card)
        -- #1# is Gain per hand, #2# is Current Total
        return { card.ability.extra.chip_gain, card.ability.extra.chips }
    end

    -- Calculate effect
    SMODS.Jokers.j_walk_park.calculate = function(self, context)
        -- 1. SCORING: Apply Chips
        if SMODS.end_calculate_context(context) then
             return {
                message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                chip_mod = self.ability.extra.chips,
                card = self
            }
        end

        -- 2. SCALING: Increase chips after every hand played
        if context.after and not context.blueprint and not context.individual and not context.repetition then
            self.ability.extra.chips = self.ability.extra.chips + self.ability.extra.chip_gain
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
                card = self
            }
        end

        -- 3. RESET: Reset at end of round (Blind defeat)
        if context.end_of_round and not context.blueprint and not context.individual and not context.repetition then
            if self.ability.extra.chips > self.ability.extra.base_chips then
                self.ability.extra.chips = self.ability.extra.base_chips
                return {
                    message = localize('k_reset'),
                    colour = G.C.RED,
                    card = self
                }
            end
        end
    end
end

if config.forbiddenFeetJoker then
    -- Create Joker Definition
    local forbidden_feet = {
        loc = {
            name = "Forbidden Feet",
            text = {
                "Gives {X:mult,C:white} X#1# {} Mult.",
                "{C:red}Disabled{} for the rest of the",
                "round if {C:attention}#2#{} is played.",
                "{s:0.8}Changes each round"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Forbidden Feet",
        slug = "j_forbidden",
        ability = {
            name = "Forbidden Feet",
            set = "Joker",
            extra = {
                Xmult = 2.5,
                forbidden_hand = "High Card",
                disabled = false,
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker using Painted's helper function
    init_joker(forbidden_feet)
   
    -- UI Variable Definition
    function SMODS.Jokers.j_forbidden.loc_def(card)
        return { 
            card.ability.extra.Xmult, 
            localize(card.ability.extra.forbidden_hand, "poker_hands") 
        }
    end

    -- Calculation Logic
    SMODS.Jokers.j_forbidden.calculate = function(self, context)
        -- 1. TRAP CHECK: Disable if the forbidden hand is played
        if context.before and context.scoring_name == self.ability.extra.forbidden_hand and not self.ability.extra.disabled then
            self.ability.extra.disabled = true
            
            -- Visual feedback on the Joker
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = "Disabled!",
                colour = G.C.RED
            })
            return
        end

        -- 2. SCORING: Apply XMult only if NOT disabled
        if SMODS.end_calculate_context(context) and not self.ability.extra.disabled then
            return {
                message = localize {
                    type = "variable",
                    key = "a_xmult",
                    vars = { self.ability.extra.Xmult }
                },
                Xmult_mod = self.ability.extra.Xmult,
                card = self
            }
        end
    
        -- 3. RESET & ROTATION: End of round cleanup
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            -- Reset the disabled state for the next round
            self.ability.extra.disabled = false
            
            local poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible then
                    table.insert(poker_hands, k)
                end
            end
            
            -- Select new random hand, different from the current one
            local old_hand = self.ability.extra.forbidden_hand
            local new_hand = nil
            local attempt = 0
            
            while not new_hand and attempt < 100 do
                local pick = pseudorandom_element(poker_hands, pseudoseed("forbidden_feet"))
                if pick ~= old_hand then
                    new_hand = pick
                end
                attempt = attempt + 1
            end
            
            self.ability.extra.forbidden_hand = new_hand or old_hand

            -- Visual juice and announcement of the new forbidden hand
            self:juice_up(0.3, 0.3)
            attention_text({
                text = localize(self.ability.extra.forbidden_hand, "poker_hands"),
                scale = 0.5,
                hold = 1.0,
                backdrop_colour = G.C.RED,
                align = 'bm',
                major = self,
                offset = {x = 0, y = 0.15 * G.CARD_H}
            })
        end
    end
end

if config.reminiscenceJoker then
    local reminiscence = {
        loc = {
            name = "Reminiscence",
            text = {
                "Gains {X:mult,C:white} X#2# {} Mult",
                "when a card is {C:attention}sold{}",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
            }
        },
        px = 142, py = 190,
        ability_name = "Reminiscence",
        slug = "j_reminiscence",
        ability = {
            name = "Reminiscence",
            set = "Joker",
            extra = {
                Xmult = 1,    -- Starts flat
                gain = 0.1,  -- Slow growth
            }
        },
        rarity = 2,
        cost = 6,
        unlocked = true, 
        discovered = true,
        blueprint_compat = true, 
        eternal_compat = true,
    }

    init_joker(reminiscence)

    function SMODS.Jokers.j_reminiscence.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.gain }
    end

    -- SCORING
    SMODS.Jokers.j_reminiscence.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
    end

    -- SCALING HOOK: Card Selling
    local sell_card_ref = Card.sell_card
    function Card:sell_card(...)
        -- Capture result of original sell
        local result = sell_card_ref(self, ...)
        
        -- Check for Reminiscence Jokers
        if G.jokers then
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.name == "Reminiscence" and joker ~= self then
                    -- Upgrade
                    joker.ability.extra.Xmult = joker.ability.extra.Xmult + joker.ability.extra.gain
                    
                    -- Visual Feedback
                    card_eval_status_text(joker, "extra", nil, nil, nil, {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.MULT
                    })
                end
            end
        end
        return result
    end
end

if config.worldsapartJoker then
    -- Create Joker
    local worlds_apart = {
        loc = {
            name = "World's Apart",
            text = {
                "Permanently stores the bonuses from",
                "each {C:planet}Planet{} card used that {C:attention}does not{}",
                "match your {C:attention}most played poker hand{}",
                "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips, {C:mult}+#2#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                "{C:inactive}Most Played: {C:attention}#5#{}" -- Added this line for clarity
            }
        },
        px = 142, 
        py = 190,
        ability_name = "World's Apart",
        slug = "j_painted_Worlds",
        ability = {
            name = "World's Apart",
            set = "Joker",
            extra = {
                stored_chips = 0,
                stored_mult = 0,
                stored_xmult = 1,
                multiplier = 1
            }
        },
        rarity = 3,  -- Rare
        cost = 8,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(worlds_apart)
    
    -- Set local variables for text display
-- Set local variables for text display
    function SMODS.Jokers.j_painted_Worlds.loc_def(card)
        -- Get the internal key for the most played hand
        local most_played_key = G.GAME.current_round.most_played_poker_hand or "High Card"
        
        -- Localize the hand name so it's readable (e.g., 'Flush' instead of 'flushes')
        local localized_hand = most_played_key and localize(most_played_key, 'poker_hands') or "None"

        return { 
            card.ability.extra.stored_chips, 
            card.ability.extra.stored_mult,
            card.ability.extra.stored_xmult,
            card.ability.extra.multiplier,
            localized_hand -- This becomes #5# in your text
        }
    end

    -- Calculate effect
-- Calculate effect
    SMODS.Jokers.j_painted_Worlds.calculate = function(self, context)
        if context.using_consumeable and not context.blueprint then
            local consumeable = context.consumeable
            local p_name = consumeable.ability.name
            
            -- FIX 1: Access hand_type safely from the center config
            local hand_type = consumeable.config.center.config.hand_type 
            local most_played = G.GAME.current_round.most_played_poker_hand
            
            -- FIX 2: Check for BOTH Planet and Spectral sets
            local is_valid_set = (consumeable.ability.set == "Planet" or consumeable.ability.set == "Spectral")
            
            if is_valid_set then
                local trigger = false
                
                -- Black Hole bypasses the 'most played' check because it upgrades EVERYTHING
                if p_name == "Black Hole" then
                    self.ability.extra.stored_chips = self.ability.extra.stored_chips + 345 * self.ability.extra.multiplier
                    self.ability.extra.stored_mult = self.ability.extra.stored_mult + 30 * self.ability.extra.multiplier
                    self.ability.extra.stored_xmult = self.ability.extra.stored_xmult + 3 * self.ability.extra.multiplier
                    trigger = true
                
                -- Standard Planets must not match the most played hand
                elseif hand_type and hand_type ~= most_played then
                    if p_name == "Mercury" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 15 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 1 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Venus" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 20 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 2 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Earth" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 25 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 2 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Mars" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 30 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 3 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Jupiter" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 15 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 2 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Saturn" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 30 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 3 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Uranus" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 20 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 1 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Neptune" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 40 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 4 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Pluto" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 10 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 1 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "The Moon" then 
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 15 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 1 * self.ability.extra.multiplier 
                        trigger = true
                    elseif p_name == "Eris" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 50 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 3 * self.ability.extra.multiplier
                        self.ability.extra.stored_xmult = self.ability.extra.stored_xmult + 3 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Ceres" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 40 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 4 * self.ability.extra.multiplier
                        self.ability.extra.stored_xmult = self.ability.extra.stored_xmult + 2 * self.ability.extra.multiplier
                        trigger = true
                    elseif p_name == "Planet X" then
                        self.ability.extra.stored_chips = self.ability.extra.stored_chips + 35 * self.ability.extra.multiplier
                        self.ability.extra.stored_mult = self.ability.extra.stored_mult + 3 * self.ability.extra.multiplier
                        self.ability.extra.stored_xmult = self.ability.extra.stored_xmult + 1 * self.ability.extra.multiplier
                        trigger = true
                    end
                end

                if trigger then
                    G.E_MANAGER:add_event(Event({
                        trigger = "after",
                        delay = 0.3,
                        func = function()
                            card_eval_status_text(self, "extra", nil, nil, nil, {
                                message = "Absorbed!",
                                colour = G.C.SECONDARY_SET.Spectral, -- Spectral color for pop-up
                                instant = true
                            })
                            return true
                        end
                    }))
                end
            end
        end
        
        -- End of Round Scoring Apply
        if SMODS.end_calculate_context(context) then
            local effects = {}
            if self.ability.extra.stored_chips > 0 then effects.chip_mod = self.ability.extra.stored_chips end
            if self.ability.extra.stored_mult > 0 then effects.mult_mod = self.ability.extra.stored_mult end
            if self.ability.extra.stored_xmult > 1 then effects.Xmult_mod = self.ability.extra.stored_xmult end
            
            if effects.chip_mod or effects.mult_mod or effects.Xmult_mod then
                effects.message = localize("k_mmc_bonus")
                return effects
            end
        end
    end
end

if config.purpleFeetJoker then
    -- Create Joker
    local purple_feet = {
        loc = {
            name = "Purple Feet",
            text = {
                "{C:mult}+#1#{} Mult per {C:attention}discard{}",
                "{C:mult}-#2#{} Mult per {C:attention}hand{} played.",
                "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Purple Feet",
        slug = "j_purple_feet",
        px = 142, 
        py = 190,
        ability = {
            name = "Purple Feet",
            set = "Joker",
            extra = {
                mult_per_discard = 2,
                mult_per_hand = 1,
                mult = 0,
            }
        },
        rarity = 1,  -- Common rarity
        cost = 3,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(purple_feet)
    
    -- Set local variables for text display
    function SMODS.Jokers.j_purple_feet.loc_def(card)
        return { 
            card.ability.extra.mult_per_discard, 
            card.ability.extra.mult_per_hand,
            card.ability.extra.mult 
        }
    end
    
    SMODS.Jokers.j_purple_feet.calculate = function(self, context)
        -- Gain mult when a discard is used (the action, not per card)
        if context.pre_discard and not context.blueprint and not context.brainstorm then
            self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_per_discard
            
            -- Show gain message
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = "+" .. self.ability.extra.mult_per_discard .. " Mult",
                colour = G.C.MULT
            })
        end

        -- Subtract mult when a hand is played
        if context.before and context.scoring_name and not context.blueprint and not context.brainstorm then
            self.ability.extra.mult = self.ability.extra.mult - self.ability.extra.mult_per_hand
            
            -- Show loss message
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = "-" .. self.ability.extra.mult_per_hand .. " Mult",
                colour = G.C.RED
            })
        end

        -- Apply the accumulated mult at the end of the calculation
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
    
end

if config.tyrantStepJoker then
    -- Create Joker
    local tyrant_step = {
        loc = {
            name = "Tyrant's Step",
            text = {
                "The {C:attention}first{} discarded {C:attention}Face{} card",
                "each round is {C:red}destroyed{}.",
                "Gains {C:attention}+1{} Hand Size for every",
                "{C:attention}#2#{} cards destroyed by this Joker.",
                "{C:inactive}(Currently {C:attention}+#1#{C:inactive} Size, {C:attention}#3#/#2#{C:inactive})",
                "{C:inactive}Resets if sold.{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Tyrant's Step",
        slug = "j_tyrant_step",
        ability = {
            name = "Tyrant's Step",
            set = "Joker",
            extra = {
                h_size_gain = 0,
                progress = 0,
                req = 4, -- Updated requirement to 4
            }
        },
        rarity = 2,  -- Common
        cost = 5, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(tyrant_step)

    -- Set local variables for UI display
    function SMODS.Jokers.j_tyrant_step.loc_def(card)
        return { 
            card.ability.extra.h_size_gain, 
            card.ability.extra.req, 
            card.ability.extra.progress 
        }
    end

    -- Calculate
    SMODS.Jokers.j_tyrant_step.calculate = function(self, context)
        -- Trigger on discard context
        if context.discard and not context.blueprint and context.other_card then
            -- Logic: Only triggers if it's the FIRST discard of the round
            if G.GAME.current_round.discards_used == 0 then
                if context.other_card:is_face() then
                    local destroyed = context.other_card
                    
                    -- Destruction Event (Standard Mod Logic)
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            if destroyed.ability and destroyed.ability.name == 'Glass Card' then
                                destroyed:shatter()
                            else
                                destroyed:start_dissolve()
                            end
                            -- Notify other Jokers
                            for i = 1, #G.jokers.cards do
                                G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed})
                            end
                            G.hand:align_cards() 
                            return true
                        end
                    }))

                    -- Increment Progress & Check for Upgrade
                    self.ability.extra.progress = self.ability.extra.progress + 1
                    local message_text = "Crushed!"
                    local message_colour = G.C.RED

                    if self.ability.extra.progress >= self.ability.extra.req then
                        self.ability.extra.progress = 0
                        self.ability.extra.h_size_gain = self.ability.extra.h_size_gain + 1
                        
                        -- Apply hand size change immediately
                        G.hand:change_size(1)
                        
                        message_text = localize("k_upgrade_ex")
                        message_colour = G.C.IMPORTANT
                        play_sound('timpani')
                        self:juice_up(0.5, 0.5)
                    else
                        play_sound('tarot2', 1, 0.4)
                    end
                    
                    -- Return 'remove = true' to tell the engine the card is gone
                    return {
                        remove = true,
                        message = message_text,
                        colour = message_colour,
                        card = self
                    } 
                end
            end
        end
    end

    -- Hook: Apply Hand Size when added to deck
    local add_to_deck_tyrant_ref = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        add_to_deck_tyrant_ref(self, from_debuff)
        if self.ability.name == "Tyrant's Step" then
            if self.ability.extra.h_size_gain > 0 then
                G.hand:change_size(self.ability.extra.h_size_gain)
            end
        end
    end

    -- Hook: Remove Hand Size when removed from deck
    local remove_from_deck_tyrant_ref = Card.remove_from_deck
    function Card:remove_from_deck(from_debuff)
        remove_from_deck_tyrant_ref(self, from_debuff)
        if self.ability.name == "Tyrant's Step" then
            if self.ability.extra.h_size_gain > 0 then
                G.hand:change_size(-self.ability.extra.h_size_gain)
            end
        end
    end
end

if config.collectorsFeetJoker then
    -- Create Joker
    local collectors_feet = {
        loc = {
            name = "Collector's Feet",
            text = {
                "Gives {C:money}$#1#{} per Joker",
                "at the end of the round"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Collector's Feet",
        slug = "j_collectors_feet",
        px = 142, 
        py = 190,
        ability = {
            name = "Collector's Feet",
            set = "Joker",
            extra = {
                dollars_per_joker = 1,
            }
        },
        rarity = 1,  -- Common rarity
        cost = 3,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(collectors_feet)

    -- Set local variables
    function SMODS.Jokers.j_collectors_feet.loc_def(card)
        return { card.ability.extra.dollars_per_joker }
    end

    -- Calculate effect
    SMODS.Jokers.j_collectors_feet.calculate = function(self, context)
        -- Only trigger at the end of the round
        if context.end_of_round and not context.individual and not context.repetition then
            -- Count the number of Jokers currently in the Joker area
            local joker_count = #G.jokers.cards

            if joker_count > 0 then
                -- Calculate the total dollar bonus
                local total_dollars = joker_count * self.ability.extra.dollars_per_joker

                -- Give the player the money
                ease_dollars(total_dollars)

                -- Show a message with the total amount of money gained
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("$") .. total_dollars,
                    colour = G.C.MONEY
                })

                -- Animate the Jokers to show the effect
            end
        end
    end
end
if config.reflectiveSolesJoker then
        -- 1. ANIMATION SETUP
    local frames_reflective_count = 2763 -- Set this to your total frame count
    local frames_per_sheet = 50

    local function register_reflective_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_reflective_soles_sheet_" .. sheet_idx,
                path = "animations/reflective/j_reflective_soles_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end

    register_reflective_sheets(frames_reflective_count)
    -- Create Joker
    local reflective_soles = {
        loc = {
            name = "Reflective Soles",
            text = {
                "{C:green}#2# in #1#{} chance to create a",
                "copy of any used {C:tarot}Tarot{} or",
                "{C:spectral}Spectral{} card",
                "{s:0.8}Excludes The Fool"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Reflective Soles",
        slug = "j_reflective_soles",
        px = 142, 
        py = 190,
        ability = {
            name = "Reflective Soles",
            set = "Joker",
            extra = {
                odds = 3,
                is_animating = true,
                current_frame = 1,
                max_frames = frames_reflective_count,
                frame_timer = 0,
                frame_delay = 0.016, -- ~30fps
                last_real_time = nil
            }
        },
        rarity = 3,  -- Uncommon rarity
        cost = 6, 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_reflective_soles_sheet_1"
    }

    -- Initialize Joker
    init_joker(reflective_soles, true)
    
    -- Set local variables
    function SMODS.Jokers.j_reflective_soles.loc_def(card)
        return { card.ability.extra.odds, "" .. (G.GAME and G.GAME.probabilities.normal or 1) }
    end

    -- Calculate
    SMODS.Jokers.j_reflective_soles.calculate = function(self, context)
        -- Check when a Tarot or Spectral card is used
        if context.consumeable and context.using_consumeable then
            if (context.consumeable.ability.set == "Tarot" or context.consumeable.ability.set == "Spectral") and
               context.consumeable.ability.name ~= "The Fool" then
                
                -- 1 in 2 chance to copy the card
                if pseudorandom("reflective_soles") < G.GAME.probabilities.normal / self.ability.extra.odds then
                    -- Check if there's space for a new consumable
                    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                        G.E_MANAGER:add_event(Event({
                            trigger = "after",
                            delay = 0.5,
                            func = function()
                                -- Create a copy of the card
                                local card_type = context.consumeable.ability.set
                                local card = create_card(card_type, G.consumeables)
                                card:set_ability(context.consumeable.config.center)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                
                                -- Show success message
                                card_eval_status_text(self, "extra", nil, nil, nil, {
                                    message = localize("k_copied_ex"),
                                    colour = (card_type == "Tarot") and G.C.SECONDARY_SET.Tarot or G.C.SECONDARY_SET.Spectral
                                })
                                return true
                            end
                        }))
                    else
                        -- No space message
                        card_eval_status_text(self, "extra", nil, nil, nil, {
                            message = localize("k_no_space_ex")
                        })
                    end
                else
                    -- Failed roll message
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = localize("k_nope_ex"),
                        colour = G.C.SECONDARY_SET.Tarot
                    })
                end
            end
        end
    end
    -- 5. ANIMATION LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)

        -- ADDED: Safely verify `self.ability` exists first to prevent crashes
        if self.ability and self.ability.name == "Reflective Soles" and self.added_to_deck then

            -- Only run the frame advancement if is_animating is true
            if self.ability.extra.is_animating then
                local current_real_time = love.timer.getTime()

                if not self.ability.extra.last_real_time then
                    self.ability.extra.last_real_time = current_real_time
                end

                local real_dt = current_real_time - self.ability.extra.last_real_time
                self.ability.extra.last_real_time = current_real_time

                self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt

                if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                    self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay

                    self.ability.extra.current_frame = self.ability.extra.current_frame + 1

                    -- Check if the animation has finished its full cycle
                    if self.ability.extra.current_frame > self.ability.extra.max_frames then
                        -- 1. Stop the animation
                        self.ability.extra.current_frame = 1
                        self.ability.extra.last_real_time = nil

                        -- 2. Revert immediately to the first frame (static sprite)
                        if self.children.center and G.ASSET_ATLAS["j_reflective_soles_sheet_1"] then
                            self.children.center.atlas = G.ASSET_ATLAS["j_reflective_soles_sheet_1"]
                            self.children.center:set_sprite_pos({ x = 0, y = 0 })
                        end
                    else
                        -- Continue Sprite Sheet Swapping
                        local frame_num = self.ability.extra.current_frame
                        local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                        local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)

                        local sheet_atlas_key = "j_reflective_soles_sheet_" .. sheet_idx

                        if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                            self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                            self.children.center:set_sprite_pos({
                                x = frame_in_sheet % 10,
                                y = math.floor(frame_in_sheet / 10)
                            })
                        end
                    end
                end
            else
                -- If not animating, ensure the real-time timer is cleanly reset
                self.ability.extra.last_real_time = nil
            end
        end
    end
   
end
if config.wildfocus then
    -- Create Joker
    local wildfocus = {
        loc = {
            name = "Wild Focus",
            text = {
                "Scored {C:attention}Wild{} cards give",
                "{X:mult,C:white} X#1#{} Mult"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Wild Focus",
        slug = "j_wild_focus",
        px = 142, 
        py = 190,
        ability = {
            name = "Wild Focus",
            set = "Joker",
            extra = {Xmult = 1.5}},
        rarity = 3,  -- Common rarity
        cost = 6,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(wildfocus)
    
    -- Set local variables
    function SMODS.Jokers.j_wild_focus.loc_def(card)
        return { card.ability.extra.Xmult }
    end

    -- Calculate
    SMODS.Jokers.j_wild_focus.calculate = function(self, context)
        
        
        -- Track individual card scoring
        if context.individual and context.cardarea == G.play then
            -- Check if the scored card is a wild card
            if context.other_card and context.other_card.ability and 
               context.other_card.ability.effect == "Wild Card" then
                
                -- Return the X1.5 multiplier effect
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                }
            end
        end
        
    end
   
end
-- Add this line inside the 'config' table near the top of Painted.lua

-- Add the following code block within the SMODS.INIT.Painted() function,
-- similar to how other jokers are defined.

if config.firstStepUpJoker then
    -- Create Joker Definition
    local first_step_up = {
        loc = {
            name = "First Step Up",
            text = {
                "Permanently increases the",
                "rank of the {C:attention}first card{}",
                "scored in each hand by {C:attention}1{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "First Step Up",
        slug = "j_first_step_up",
        ability = {
            name = "First Step Up",
            set = "Joker",
            extra = {}
        },
        rarity = 2, -- Uncommon
        cost = 5,
        set = "Feet Joker", -- Keep the theme
        unlocked = true,
        discovered = true,
        blueprint_compat = false, -- Changing card base might interact weirdly with blueprint
        eternal_compat = true,
        
    }

    -- Initialize Joker using Painted.lua helper
    init_joker(first_step_up)

    -- Set local variables function
    function SMODS.Jokers.j_first_step_up.loc_def(card)
        return {}
    end

    -- Calculate Function (The Joker's Logic)
    SMODS.Jokers.j_first_step_up.calculate = function(self, context)
        -- Check when an individual card is being scored
        if context.individual and context.cardarea == G.play and not context.blueprint then
            
            -- Logic: Check if this is the FIRST card in the scoring hand
            -- context.scoring_hand contains the cards being scored in the current hand
            if context.other_card == context.scoring_hand[1] then
                local card_to_modify = context.other_card

                -- Ignore Stone Cards as they don't have ranks
                if (card_to_modify.ability.set == 'Enhanced' or card_to_modify.ability.set == 'Default') and card_to_modify.ability.effect ~= 'Stone Card' then
                    local current_id = card_to_modify:get_id()

                    -- Check if rank can be increased (Max is Ace/14)
                    if current_id < 14 then
                        local new_id = current_id + 1
                        local current_suit_key = card_to_modify.base.suit:sub(1, 1)

                        local new_rank_char
                        if new_id < 10 then
                            new_rank_char = tostring(new_id)
                        elseif new_id == 10 then
                            new_rank_char = 'T'
                        elseif new_id == 11 then
                            new_rank_char = 'J'
                        elseif new_id == 12 then
                            new_rank_char = 'Q'
                        elseif new_id == 13 then
                            new_rank_char = 'K'
                        elseif new_id == 14 then
                            new_rank_char = 'A'
                        end

                        local new_card_key = current_suit_key .. '_' .. new_rank_char
                        local new_base = G.P_CARDS[new_card_key]

                        if new_base then
                            -- First event: flip and juice animation
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.1,
                                func = function()
                                    if card_to_modify and not card_to_modify.REMOVED then
                                        card_to_modify:flip()
                                        play_sound('card1', 1.15)
                                        card_to_modify:juice_up(0.3, 0.3)
                                    end
                                    return true
                                end
                            }))

                            -- Second event: apply rank change and flip back
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.5,
                                func = function()
                                    if card_to_modify and not card_to_modify.REMOVED then
                                        card_to_modify:set_base(new_base)
                                        G.GAME.blind:debuff_card(card_to_modify)
                                        card_to_modify:flip()
                                        play_sound('tarot2', 0.85, 0.6)
                                        card_to_modify:juice_up(0.3, 0.3)

                                        card_eval_status_text(self, "extra", nil, nil, nil, {
                                            message = localize("k_upgrade_ex"),
                                            colour = G.C.GREEN
                                        })
                                    end
                                    return true
                                end
                            }))
                        end
                    end
                end
            end
        end
        return nil
    end
end
if config.steelFaceJoker then
    -- Create Joker
    local steel_face = {
        loc = {
            name = "Steel Transformation",
            text = {
                "All played {C:attention}Face cards{}",
                "become {C:attention}Steel cards",
                "when scored"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Steel Transformation",
        slug = "j_steel_face",
        px = 142, 
        py = 190,
        ability = {
            name = "Steel Transformation",
            set = "Joker",
            extra = {
                -- No extra values needed for this effect
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,  -- This effect shouldn't be blueprintable
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(steel_face)

    -- Set local variables (no dynamic text needed)
    function SMODS.Jokers.j_steel_face.loc_def(card)
        return {}
    end

    -- Calculate effect
    SMODS.Jokers.j_steel_face.calculate = function(self, context)
        -- Transform face cards to steel when they're individually scored
        
        if context.before and not context.individual and not context.blueprint then
            local faces = {}
            for k, v in ipairs(context.scoring_hand) do
                if v:is_face() and v.config.center ~= G.P_CENTERS.m_steel then 
                    faces[#faces+1] = v
                    
                    v:set_ability(G.P_CENTERS.m_steel, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            return true
                        end
                    })) 
                end
            end
            if #faces > 0 then 
                return {
                    message = "Steel!",
                    colour = G.C.RED,
                    card = self
                }
            end
        end
    end
end
if config.preservationJoker then
    -- Create Joker
    local preservation = {
        loc = {
            name = "Preservation Steps",
            text = {
                "When a card is {S:1.1,C:red,E:2}destroyed{},",
                "create an {C:dark_edition}Editioned{} copy",
                "in your hand",
                "{s:0.8}Edition is random"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Preservation Steps",
        slug = "j_preservation",
        px = 142, 
        py = 190,
        ability = {
            name = "Preservation Steps",
            set = "Joker",
            extra = {
                editions_created = 0,  -- Track for potential scaling
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(preservation)

    -- Set local variables for text display
    function SMODS.Jokers.j_preservation.loc_def(card)
        return { 
            card.ability.extra.editions_created
        }
    end

    -- Hook into card destruction to create editioned copies
-- Hook into card destruction to create editioned copies
local start_dissolve_preservation_ref = Card.start_dissolve
function Card:start_dissolve(from_debuff, immediate, delay, no_dust)
    -- Only trigger for playing cards that aren't being destroyed by debuff
    -- ADDED: Check to ensure we ignore Queens marked by Borrowed Heels
    if not from_debuff and self.ability and (self.ability.set == "Default" or self.ability.set == "Enhanced") and not self.ability.borrowed_heels_queen and G.jokers then
        
        -- Find Preservation Steps jokers
        for _, joker in ipairs(G.jokers.cards) do
            if joker.ability.name == "Preservation Steps" then
                -- Always create copy (guaranteed effect)
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.3,
                    func = function()
                        -- Create the base card copy
                        G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                        local new_card = copy_card(self, nil, nil, G.playing_card)

                        -- Apply random edition
                        local editions = {
                            {foil = true},
                            {holo = true},
                            {polychrome = true}
                        }
                        local random_edition = pseudorandom_element(editions, pseudoseed("preservation_edition"))
                        new_card:set_edition(random_edition, true)

                        -- Add to hand
                        new_card:add_to_deck()
                        G.deck.config.card_limit = G.deck.config.card_limit + 1
                        table.insert(G.playing_cards, new_card)
                        G.hand:emplace(new_card)
                        new_card:start_materialize()

                        -- Track editions created
                        joker.ability.extra.editions_created = joker.ability.extra.editions_created + 1

                        -- Animate the new card
                        new_card:juice_up(0.5, 0.5)
                        return true
                    end
                }))

                card_eval_status_text(joker, "extra", nil, nil, nil, {
                    message = "Preserved!",
                    colour = G.C.DARK_EDITION
                })

                -- Break after first joker processes (avoid multiple copies)
                break
            end
        end
    end

    -- Call original function
    return start_dissolve_preservation_ref(self, from_debuff, immediate, delay, no_dust)
end

    -- Calculate function (minimal since this is destruction-based)
    SMODS.Jokers.j_preservation.calculate = function(self, context)
        -- This joker doesn't need hand-based calculations
        return nil
    end

end

if config.barefootJoker then
    -- Create Joker
    local barefoot_joker = {
        loc = {
            name = "Barefoot Joker",
            text = {
                "Gains {C:mult}+#1#{} Mult per card",
                "scored without an {C:attention}Enhancement{},",
                "{C:attention}Seal{}, or {C:dark_edition}Edition{}",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Barefoot Joker",
        slug = "j_barefoot",
        ability = {
            name = "Barefoot Joker",
            set = "Joker",
            extra = {
                mult_gain = 0.4, -- Scaling value (The Investment)
                mult = 0,        -- Current value (The Savings)
            }
        },
        rarity = 1,  -- Common: "The Savings Account"
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(barefoot_joker)

    -- Set local variables for text display
    function SMODS.Jokers.j_barefoot.loc_def(card)
        return { card.ability.extra.mult_gain, card.ability.extra.mult }
    end

    -- Calculate effect
    SMODS.Jokers.j_barefoot.calculate = function(self, context)
        -- SCALE: Check individual cards during scoring
        if context.individual and context.cardarea == G.play and not context.blueprint  then
            local card = context.other_card
            
            -- Check for "Barefoot" status (No enhancement, no seal, no edition)
            -- Note: card.config.center == G.P_CENTERS.c_base ensures no enhancement (Stone, Gold, etc.)
            if not card.seal and card.config.center == G.P_CENTERS.c_base and not card.edition then
                
                -- Increment the savings account
                self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_gain
                
                -- Optional: Visual feedback per card (can be spammy, so usually kept silent or subtle)
            end
        end

        -- PAYOFF: Apply accumulated Mult at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
end

if config.trampleJoker then
    local trample = {
        loc = {
            name = "Hold on",
            text = {
                "When {C:attention}Blind{} is selected,",
                "{C:red}destroy{} all {C:attention}consumables{},",
                "upgrade {C:attention}most played poker hand{}",
                "by {C:attention}1{} level per card destroyed",
                "{C:inactive}(Most played: {C:attention}#1#{C:inactive}){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Trample",
        slug = "j_trample",
        ability = {
            name = "Trample",
            set = "Joker",
            extra = {}
        },
        rarity = 2,  -- Uncommon
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(trample)

    -- Loc Def: Display current target (or "None" if tied/empty)
    function SMODS.Jokers.j_trample.loc_def(card)
        local _hand = "High Card"
        local _tally = -1
        local max_played = 0
        local count_at_max = 0
        local best_hand_key = nil

        if G.handlist then
            -- 1. First pass: find max played count
            for k, v in ipairs(G.handlist) do
                if G.GAME.hands[v].visible then
                    local played = G.GAME.hands[v].played
                    if played > max_played then
                        max_played = played
                    end
                end
            end

            -- 2. Second pass: count ties and find the hand
            for k, v in ipairs(G.handlist) do
                if G.GAME.hands[v].visible then
                    local played = G.GAME.hands[v].played
                    if played == max_played and max_played > 0 then
                        count_at_max = count_at_max + 1
                        best_hand_key = v
                    end
                end
            end
        end

        -- If valid unique high score, show it. Otherwise show safe default or indicator.
        if max_played > 0 and count_at_max == 1 then
            return { localize(best_hand_key, 'poker_hands') }
        else
            return { "None/Tied" }
        end
    end

    -- Calculate
    SMODS.Jokers.j_trample.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced then
            
            -- 1. LOGIC CHECK: Can we actually run?
            local max_played = 0
            local count_at_max = 0
            local target_hand = nil

            -- Find the max played count
            for k, v in ipairs(G.handlist) do
                local played = G.GAME.hands[v].played
                if played > max_played then
                    max_played = played
                end
            end

            -- Check for ties and identify the specific hand
            for k, v in ipairs(G.handlist) do
                local played = G.GAME.hands[v].played
                if played == max_played and played > 0 then
                    count_at_max = count_at_max + 1
                    target_hand = v
                end
            end

            -- EXIT EARLY if conditions aren't met (0 played or Ties)
            if max_played == 0 or count_at_max > 1 then
                return
            end

            -- 2. Identify consumables to destroy
            local destroy_list = {}
            for k, v in ipairs(G.consumeables.cards) do
                table.insert(destroy_list, v)
            end

            -- 3. Execute Effect (Only if we have consumables AND a valid hand)
            if #destroy_list > 0 and target_hand then
                
                -- UI START
                update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(target_hand, 'poker_hands'), chips = '...', mult = '...', level=''})

                -- Event: Sound, Pulse, Dissolve
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    func = function()
                        play_sound('tarot1')
                        self:juice_up(0.8, 0.5)
                        G.TAROT_INTERRUPT_PULSE = true
                        -- SHOW "Upgrade!" TEXT
                        card_eval_status_text(self, 'extra', nil, nil, nil, {
                            message = localize('k_upgrade_ex'),
                            colour = G.C.RED
                        })
                        for i = 1, #destroy_list do
                            destroy_list[i]:start_dissolve()
                        end
                        
                        return true 
                    end 
                }))

                -- Level Up
                level_up_hand(self, target_hand, nil, #destroy_list)

                -- UI STOP
                update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})

                -- Reset Pulse
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    func = function()
                        G.TAROT_INTERRUPT_PULSE = nil
                        return true 
                    end 
                }))
            end
        end
    end
end

if config.noticingJoker then
    -- Create Joker
    local noticing = {
        loc = {
            name = "Noticing",
            text = {
                "{C:attention}Non-Queen{} cards",
                "adjacent to a {C:attention}Queen{}",
                "give {C:mult}+#1#{} Mult when scored"
            }
        },
        px = 142, py = 190,
        ability_name = "Noticing",
        slug = "j_noticing",
        ability = {
            name = "Noticing",
            set = "Joker",
            extra = 4
        },
        rarity = 1, -- Common
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        soul_pos = { x = 1, y = 0 },
    }

    -- Initialize Joker
    init_joker(noticing)

    -- Set local variables for UI display
    function SMODS.Jokers.j_noticing.loc_def(card)
        return { card.ability.extra }
    end

    -- Calculate effect
    SMODS.Jokers.j_noticing.calculate = function(self, context)
        -- Trigger for each individual card scored in the played hand
        if context.individual and context.cardarea == G.play then
            local card = context.other_card
            
            -- Only applies to Non-Queen cards that are actually capable of scoring
            if card:get_id() ~= 12 and not card.debuff then
                local is_adjacent_to_queen = false
                
                -- Verify adjacency physically within the full played hand
                if context.full_hand then
                    for i = 1, #context.full_hand do
                        if context.full_hand[i] == card then
                            -- Check the card directly to the left
                            if i > 1 and context.full_hand[i-1]:get_id() == 12 then
                                is_adjacent_to_queen = true
                            end
                            -- Check the card directly to the right
                            if i < #context.full_hand and context.full_hand[i+1]:get_id() == 12 then
                                is_adjacent_to_queen = true
                            end
                            break
                        end
                    end
                end
                
                -- If it was placed next to a Queen, apply the Mult
                if is_adjacent_to_queen then
                    return {
                        mult = self.ability.extra,
                        card = self
                    }
                end
            end
        end
    end
end

if config.sightseeingJoker then
    -- Create Joker
    local sightseeing_joker = {
        loc = {
            name = "Sightseeing Joker",
            text = {
                "This Joker gains {C:chips}+#1#{} Chips",
                "each time a played {C:attention}Queen{}",
                "is scored",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
            }
        },
        px = 142, py = 190,
        ability_name = "Sightseeing Joker",
        slug = "j_sightseeing",
        ability = {
            name = "Sightseeing",
            set = "Joker",
            extra = {
                chip_gain = 5,  -- The interest rate
                chips = 0       -- The savings account
            }
        },
        rarity = 2, -- Common: The Savings Account
        cost = 4, 
        set = "Feet Joker",
        unlocked = true, 
        discovered = true,
        blueprint_compat = true, 
        eternal_compat = true,
        soul_pos = { x = 1, y = 0 },
    }

    -- Initialize Joker
    init_joker(sightseeing_joker)

    -- Set local variables for dynamic UI
    function SMODS.Jokers.j_sightseeing.loc_def(card)
        return { card.ability.extra.chip_gain, card.ability.extra.chips }
    end

    -- Calculate Mechanics
    SMODS.Jokers.j_sightseeing.calculate = function(self, context)
        
        -- 1. SCALING: Check each individual card as it is scored
        if context.individual and context.cardarea == G.play and not context.blueprint then
            -- Check if the scored card is a Queen (ID 12)
            if context.other_card:get_id() == 12 and not context.other_card.debuff then
                
                -- Add to the savings account
                self.ability.extra.chips = self.ability.extra.chips + self.ability.extra.chip_gain
                
                -- Visual Feedback: Small pulse to show the scaling occurred
                G.E_MANAGER:add_event(Event({
                    func = function()
                        self:juice_up(0.3, 0.4)
                        return true
                    end
                }))
                
                -- Return the upgrade message floating text
                return {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.CHIPS,
                    card = self
                }
            end
        end

        -- 2. SCORING: Apply the saved chips during the Joker calculation phase
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.chips > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_chips",
                        vars = { self.ability.extra.chips }
                    },
                    chip_mod = self.ability.extra.chips,
                    card = self
                }
            end
        end
    end
end

if config.experiencingJoker then
    -- Create Joker
    local experiencing_joker = {
        loc = {
            name = "Experiencing Joker",
            text = {
                "This Joker gains {C:mult}+#1#{} Mult",
                "each time a played {C:attention}Queen{}",
                "is scored",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, py = 190,
        ability_name = "Experiencing Joker",
        slug = "j_experiencing",
        ability = {
            name = "Experiencing",
            set = "Joker",
            extra = {
                mult_gain = 1,  -- The interest rate
                mult = 0       -- The savings account
            }
        },
        rarity = 2, -- Common: The Savings Account
        cost = 4, 
        set = "Feet Joker",
        unlocked = true, 
        discovered = true,
        blueprint_compat = true, 
        eqternal_compat = true,
        soul_pos = { x = 1, y = 0 },
        
    }

    -- Initialize Joker
    init_joker(experiencing_joker)

    -- Set local variables for dynamic UI
    function SMODS.Jokers.j_experiencing.loc_def(card)
        return { card.ability.extra.mult_gain, card.ability.extra.mult }
    end

    -- Calculate Mechanics
    SMODS.Jokers.j_experiencing.calculate = function(self, context)
        
        -- 1. SCALING: Check each individual card as it is scored
        if context.individual and context.cardarea == G.play and not context.blueprint then
            -- Check if the scored card is a Queen (ID 12)
            if context.other_card:get_id() == 12 and not context.other_card.debuff then
                
                -- Add to the savings account
                self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_gain
                
                -- Visual Feedback: Small pulse to show the scaling occurred
                G.E_MANAGER:add_event(Event({
                    func = function()
                        self:juice_up(0.3, 0.4)
                        return true
                    end
                }))
                
                -- Return the upgrade message floating text
                return {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.MULT,
                    card = self
                }
            end
        end

        -- 2. SCORING: Apply the saved chips during the Joker calculation phase
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
end

if config.beggingJoker then
    local begging_joker = {
        loc = {
            name = "Begging Joker",
            text = {
                "This Joker gains {X:mult,C:white} X#1# {} Mult",
                "per scored {C:attention}Queen{}",
                "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Begging Joker",
        slug = "j_begging",
        ability = {
            name = "Begging Joker",
            set = "Joker",
            extra = 0.2,    -- The gain amount
            begging_xmult = 1 -- The starting/current XMult
        },
        rarity = 3, -- Rare
        cost = 8,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        soul_pos = { x = 1, y = 0 },
         -- Adjust if you have a specific soul sprite

    }

    -- Initialize using the Painted.lua helper
    init_joker(begging_joker)

    -- Localization variables for the tooltip
    function SMODS.Jokers.j_begging.loc_def(card)
        return { card.ability.extra, card.ability.begging_xmult }
    end

    -- Scaling and Scoring Logic
    SMODS.Jokers.j_begging.calculate = function(self, context)
        -- PART 1: GAIN XMULT
        -- Triggered for every card in the played hand as it scores
        if context.individual and context.cardarea == G.play and not context.blueprint then
            -- Queen ID is 12
            if context.other_card:get_id() == 12 and not context.other_card.debuff then
                self.ability.begging_xmult = self.ability.begging_xmult + self.ability.extra
                
                -- Visual feedback for the gain
                return {
                    extra = {focus = self, message = localize('k_upgrade_ex')},
                    card = self
                }
            end
        end

        -- PART 2: APPLY XMULT
        -- Triggered during the Joker evaluation phase
        if context.joker_main and self.ability.begging_xmult > 1 then
            return {
                message = localize{type='variable',key='a_xmult',vars={self.ability.begging_xmult}},
                Xmult_mod = self.ability.begging_xmult
            }
        end
    end -- End of calculate
end -- End of config check
-- High-End Heels Joker
if config.highEndHeelsJoker then
    local high_end_heels = {
        loc = {
            name = "Vice Grip",
            text = {
                "Gains {X:mult,C:white}X#2#{} Mult",
                "when {C:attention}Boss Blind{} is defeated,",
                "{C:green}#3# in #4#{} chance to destroy",
                "the {C:attention}most expensive{} Joker",
                "{C:inactive}(Destroys self if no others){}",
                "{C:inactive}(Currently {X:mult,C:white}X#5#{C:inactive} Mult){}"
            }
        },
        slug = "j_feet_high_end_heels",
        ability = {
            name = "High-End Heels",
            set = "Joker",
            extra = {
                Xmult = 1,      -- Starting XMult
                gain = 2,       -- Scaling amount (X2)
                odds = 10        -- 1 in 3 chance
            }
        },
        px = 142, 
        py = 190,
        rarity = 2, -- Rare
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = false,
        
    }

    init_joker(high_end_heels)

    function SMODS.Jokers.j_feet_high_end_heels.loc_def(card)
        return {
            card.ability.extra.Xmult,
            card.ability.extra.gain,
            "" .. (G.GAME and G.GAME.probabilities.normal or 1),
            card.ability.extra.odds,
            card.ability.extra.Xmult
        }
    end

    SMODS.Jokers.j_feet_high_end_heels.calculate = function(self, context)
        
        -- 1. Apply XMult during scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end

        -- 2. Trigger on End of Round if Boss Blind (Ante Increase)
        if context.end_of_round and not context.repetition and not context.individual and G.GAME.blind.boss then
            
            -- Scale the XMult
            self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.gain
            
            card_eval_status_text(self, 'extra', nil, nil, nil, {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT
            })

            -- Calculate Destruction Risk
            if pseudorandom('high_end_heels') < G.GAME.probabilities.normal / self.ability.extra.odds then
                
                local max_cost = -1
                local destructables = {}

                -- Find the highest sell cost among OTHER non-eternal jokers
                for k, v in ipairs(G.jokers.cards) do
                    -- Exclude 'self' from this first check
                    if v ~= self and not v.ability.eternal and not v.getting_sliced then
                        if v.sell_cost > max_cost then
                            max_cost = v.sell_cost
                            destructables = {v} -- New max found, restart list
                        elseif v.sell_cost == max_cost then
                            table.insert(destructables, v) -- Tie found, add to list
                        end
                    end
                end

                local card_to_destroy = nil

                if #destructables > 0 then
                    -- If we found other jokers, pick one of the most expensive ones
                    card_to_destroy = pseudorandom_element(destructables, pseudoseed('high_end_heels_destroy'))
                elseif not self.ability.eternal and not self.getting_sliced then
                    -- If NO other valid jokers were found, destroy SELF
                    card_to_destroy = self
                end

                -- Execute Destruction
                if card_to_destroy then 
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card_to_destroy.getting_sliced = true
                            card_to_destroy:start_dissolve()
                            return true
                        end
                    }))
                    
                    card_eval_status_text(self, 'extra', nil, nil, nil, {
                        message = localize('k_destroyed_ex'),
                        colour = G.C.RED
                    })
                end
            else
                -- Safe message
                card_eval_status_text(self, 'extra', nil, nil, nil, {
                    message = localize('k_safe_ex'),
                    colour = G.C.GREEN
                })
            end
        end
    end
end

if config.celestialSolesJoker then
    -- Create Joker
    local celestial_soles = {
        loc = {
            name = "Celestial Soles",
            text = {
                "After defeating a Blind,",
                "create a {C:planet}Planet{} card of the",
                "last scoring hand played"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Celestial Soles",
        slug = "j_celestial_soles",
        px = 142, 
        py = 190,
        ability = {
            name = "Celestial Soles",
            set = "Joker",
            extra = {}
        },
        rarity = 2,  -- Uncommon
        cost = 6, 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true
    }

    -- Initialize Joker
    init_joker(celestial_soles)

    -- Set local variables for text display
    function SMODS.Jokers.j_celestial_soles.loc_def(card)
        return {}
    end

    -- Calculate effect
    SMODS.Jokers.j_celestial_soles.calculate = function(self, context)
        -- Trigger at the end of a round when a Blind is successfully beaten
        if context.end_of_round and not context.individual and not context.repetition and G.GAME.last_hand_played then
            -- Check if there's space for a new consumable
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    delay = 0.4, -- Delay to make the effect noticeable
                    func = (function()
                        local _planet_key = nil
                        -- Find the planet that corresponds to the last hand played
                        for _, v in pairs(G.P_CENTER_POOLS.Planet) do
                            if v.config.hand_type == G.GAME.last_hand_played then
                                _planet_key = v.key
                                break
                            end
                        end

                        if _planet_key then
                            -- Create and add the planet card
                            local card = create_card("Planet", G.consumeables, nil, nil, nil, nil, _planet_key, 'celestial_soles')
                            card:add_to_deck()
                            G.consumeables:emplace(card)
                        end
                        
                        G.GAME.consumeable_buffer = 0

                        -- Show a notification message
                        card_eval_status_text(self, "extra", nil, nil, nil, {
                            message = localize("k_planet_created"),
                            colour = G.C.SECONDARY_SET.Planet
                        })
                        return true
                    end)
                }))
            else
                -- Show 'no space' message if consumables are full
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_no_space_ex")
                })
            end
        end
    end
end


if config.steadyStrideJoker then
    local steady_stride = {
        loc = {
            name = "Steady Stride",
            text = {
                "Permanently gains {C:mult}+#1#{} Mult if the",
                "first hand of the round is a",
                "{C:attention}High Card{}",
                "{C:inactive}(Currently: {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Steady Stride",
        slug = "j_steady_stride",
        px = 142, 
        py = 190,
        ability = {
            name = "Steady Stride",
            set = "Joker",
            extra = {
                mult_per_trigger = 5,
                total_mult = 0,
                bonus_applied_this_round = false,
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    init_joker(steady_stride)

    function SMODS.Jokers.j_steady_stride.loc_def(card)
        return { card.ability.extra.mult_per_trigger, card.ability.extra.total_mult }
    end

    SMODS.Jokers.j_steady_stride.calculate = function(self, context)
        -- Apply total accumulated mult at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.total_mult > 0 then
                return {
                    message = localize({
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.total_mult }
                    }),
                    mult_mod = self.ability.extra.total_mult,
                    card = self
                }
            end
        end

        -- Trigger the permanent bonus gain
        if context.before and context.scoring_name and not context.blueprint and not self.ability.extra.bonus_applied_this_round then
            if G.GAME.current_round.hands_played == 0 and context.scoring_name == "High Card" then
                self.ability.extra.bonus_applied_this_round = true
                self.ability.extra.total_mult = self.ability.extra.total_mult + self.ability.extra.mult_per_trigger

             

                G.E_MANAGER:add_event(Event({
                    delay = 0.5,

                    func = function()
                        self:juice_up(0.5, 0.5)
                        
                        return true
                    end
                }))
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_upgrade_ex"),
                })
            end
        end

        -- Reset the flag at the end of a hand
        if context.end_of_round and not context.individual and not context.repetition then
            self.ability.extra.bonus_applied_this_round = false
        end
    end
end

if config.holditinJoker then
    -- Create Joker
    local holditinJoker = {
        loc = {
            name = "Hold It In",
            text = {
                "If no {C:attention}discards{} were used",
                "this round, gain {X:mult,C:white} X#2#{}",
                "Mult at end of round",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Hold It In",
        slug = "j_hold_in",
        px = 142, 
        py = 190,
        ability = {
            name = "Hold It In",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 0.25,
                discards_used = 0
            }
        },
        rarity = 2,  -- Common rarity
        cost = 6,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(holditinJoker)
    
    -- Set local variables
    function SMODS.Jokers.j_hold_in.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod, card.ability.extra.discards_used }
    end

    -- Calculate
    SMODS.Jokers.j_hold_in.calculate = function(self, context)
        -- Track discards
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
        if context.discard then
            self.ability.extra.discards_used = self.ability.extra.discards_used + 1
        end

        -- Apply Xmult bonus at end of round if no discards were used
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if self.ability.extra.discards_used == 0 then
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                
                -- Display bonus message
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                })

                return 
            end

            -- Reset discard counter
            self.ability.extra.discards_used = 0
        end
    end
    
   
end

if config.tiptoeJoker then
    -- Create Joker
    local tiptoe = {
        loc = {
            name = "Tiptoe",
            text = {
                "Gains {X:mult,C:white} X#2#{} Mult if played",
                "hand is {C:attention}High Card{},",
                "loses {X:mult,C:white} X#2#{} Mult if not",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Tiptoe",
        slug = "j_tiptoe",
        ability = {
            name = "Tiptoe",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 0.1,
            }
        },
        rarity = 1,  -- Common rarity (similar to Ride the Bus mechanics)
        cost = 5, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(tiptoe)

    -- Set local variables
    function SMODS.Jokers.j_tiptoe.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end

    -- Calculate
    SMODS.Jokers.j_tiptoe.calculate = function(self, context)
        -- Calculation logic (Before scoring to update stats)
        if context.before and context.scoring_name and not context.blueprint then
            if context.scoring_name == "High Card" then
                -- Gain Mult
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.MULT
                })
            else
                -- Lose Mult (Check if above 1 first to avoid going below base)
                if self.ability.extra.Xmult > 1 then
                    self.ability.extra.Xmult = math.max(1, self.ability.extra.Xmult - self.ability.extra.Xmult_mod)
                    
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = "-" .. self.ability.extra.Xmult_mod .. "X",
                        colour = G.C.RED
                    })
                end
            end
        end

        -- Apply current Xmult logic
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
    end
end


if config.peddlerJoker then
    local peddler_def = {
        loc = {
            name = "Peddler",
            text = {
                "Gains {C:mult}+#1#{} Mult when",
                "a {C:attention}Joker{} is sold",
                "Gains {C:mult}+#2#{} Mult when",
                "a {C:attention}Consumeable{} is sold",
                "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Peddler",
        slug = "j_feet_peddler",
        ability = { 
                mult = 0,
                extra = { 
                    joker_gain = 2,
                    cons_gain = 1
                }
         },
        rarity = 1,
        cost = 3,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }
    init_joker(peddler_def)

    -- Define Localization Values
    SMODS.Jokers.j_feet_peddler.loc_def = function(card)
        return { card.ability.extra.joker_gain, card.ability.extra.cons_gain, card.ability.mult }
    end

    -- Define Calculation Logic
    SMODS.Jokers.j_feet_peddler.calculate = function(self, context)
        -- Listen for the 'selling_card' event triggered by Main.lua
        if context.selling_card and not context.blueprint then
            if context.card then
                -- Check if the sold card is a Joker
                if context.card.ability.set == 'Joker' and context.card ~= self then
                    self.ability.mult = self.ability.mult + self.ability.extra.joker_gain
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            card_eval_status_text(self, 'extra', nil, nil, nil, {
                                message = localize{type='variable',key='a_mult',vars={self.ability.extra.joker_gain}}
                            })
                            return true
                        end
                    }))
                    return
                -- Check if the sold card is a Consumeable (Tarot, Planet, Spectral)
                elseif context.card.ability.consumeable then
                    self.ability.mult = self.ability.mult + self.ability.extra.cons_gain
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            card_eval_status_text(self, 'extra', nil, nil, nil, {
                                message = localize{type='variable',key='a_mult',vars={self.ability.extra.cons_gain}}
                            })
                            return true
                        end
                    }))
                    return
                end
            end
        end

        -- Apply accumulated chips at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.mult > 0 then

            return {
                message = localize{
                    type='variable',
                    key='a_mult',
                    vars={self.ability.mult}
                },
                mult_mod = self.ability.mult,
                card = self
            }
            end
        end
    end
end

if config.transformerjoker then 
    local transform_joker = {
        loc = {
            name = "The Transformer",
            text = {
                "If played hand contains",
                "a {C:attention}Two Pair{} or {C:attention}Full House{},",
                "convert the {C:attention}leftmost{} card",
                "into the {C:attention}rightmost{} card",
                "{s:0.8}Drag to rearrange",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Transformer",
        slug = "j_transformer",
        ability = {
            name = "The Transformer",
            set = "Joker",
            extra = {}
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6, 
        unlocked = true,
        discovered = true,
        blueprint_compat = false, -- Copies shouldn't trigger this or it breaks logic
        eternal_compat = true,
        
    }
    
    -- Initialize Joker
    init_joker(transform_joker)
    
    -- Set local variables
    function SMODS.Jokers.j_transformer.loc_def(card)
        return {}
    end
    
    -- Calculate effect
    SMODS.Jokers.j_transformer.calculate = function(self, context)
        -- Trigger during 'before' context (before scoring calculation)
        if context.before and context.full_hand and #context.full_hand >= 2 then
            local hand_type = context.scoring_name
            
            -- Works on Two Pair or Full House
            if hand_type == "Two Pair" or hand_type == "Full House" then
                
                -- CRITICAL: Sort by visual X position to support "Drag to rearrange"
                -- context.full_hand is usually sorted by Rank by the game engine, 
                -- so we make a temporary table and sort it by T.x
                local left_card = context.full_hand[1]
                local right_card = context.full_hand[2]
                
                if left_card and right_card and left_card ~= right_card then
                    
                    -- Step 1: Flip and Juice Animation
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.2,
                        func = function() 
                            self:juice_up(0.3, 0.3)
                            card_eval_status_text(self, "extra", nil, nil, nil, {
                                message = "Transform!",
                                colour = G.C.PURPLE
                            })

                            left_card:flip()
                            play_sound('card1', 1.15)
                            left_card:juice_up(0.3, 0.3)
                            return true
                        end 
                    }))

                    -- Step 2: Actually Transform the data
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.5, -- Wait for flip
                        func = function()
                            copy_card(right_card, left_card)

                            -- Flip back and finish
                            left_card:flip()
                            play_sound('tarot2', 0.85, 0.6)
                            left_card:juice_up(0.3, 0.3)
                            
                            return true
                        end
                    }))
                end
            end
        end
    end
end
if config.plainFeetJoker then
    -- Create Joker
    local plain_feet = {
        loc = {
            name = "Plain Feet",
            text = {
                "Gain {C:chips}+#1#{} Chips per card",
                "without a {C:attention}Seal{}, {C:enhanced}Enhancement{},",
                "or {C:dark_edition}Edition{} scored",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Plain Feet",
        slug = "j_plain_feet",
        px = 142, 
        py = 190,
        ability = {
            name = "Plain Feet",
            set = "Joker",
            extra = {
                chip_mod = 4,
                current_chips = 0,
            }
        },
        rarity = 1,  -- Common rarity
        cost = 3,     -- Low cost appropriate for small chip gain
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true
        }

    -- Initialize Joker
    init_joker(plain_feet)

    -- Set local variables for text display
    function SMODS.Jokers.j_plain_feet.loc_def(card)
        return { card.ability.extra.chip_mod, card.ability.extra.current_chips }
    end

    -- Calculate effect
    SMODS.Jokers.j_plain_feet.calculate = function(self, context)
        -- Check when a card is played individually
        if context.individual and context.cardarea == G.play and not context.repetition and not context.blueprint then
            local card = context.other_card
            
            -- Check if card has no seal, enhancement or edition
            if not card.seal and card.config.center == G.P_CENTERS.c_base and not card.edition then
                                -- Accumulate chips
                self.ability.extra.current_chips = self.ability.extra.current_chips + self.ability.extra.chip_mod
            end
        end

        -- Apply accumulated chips at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.current_chips > 0 then
                local ret = {
                    message = localize {
                        type = "variable",
                        key = "a_chips",
                        vars = { self.ability.extra.current_chips }
                    },
                    chip_mod = self.ability.extra.current_chips,
                    card = self
                }
                
                
                return ret
            end
        end
    end
   
end
if config.showoffJoker then
    -- Create Joker
    local showoff = {
        loc = {
            name = "The Show-Off",
            text = {
                "Gains {X:mult,C:white} X#2#{} Mult when",
                "a blind is finished with",
                "{C:attention}#3#X{} chip requirement",
                "{s:0.8}Score Needed: {C:red,s:0.8}#4#{}",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Show-Off",
        slug = "j_showoff",
        px = 142, 
        py = 190,
        ability = {
            extra = {
                Xmult = 1,
                Xmult_mod = 0.5,
                req = 2,
                total_chips = 0,
                required_chips = 0,
               
            }
        },
        rarity = 3,
        cost = 8, 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(showoff)

    
    -- Set local variables
    function SMODS.Jokers.j_showoff.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod, card.ability.extra.req, card.ability.extra.required_chips }
    end

    -- Calculate
    SMODS.Jokers.j_showoff.calculate = function(self, context)
        -- Apply xmult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
        
        -- Set required chips when blind starts
        if context.setting_blind and not context.blueprint and not context.brainstorm then
            if G.GAME.blind and G.GAME.blind.chips then
                self.ability.extra.required_chips = self.ability.extra.req * G.GAME.blind.chips
            end
        end
        
        -- Reset total when not in play or when switching states
        if not G.GAME.blind or (G.STATE ~= G.STATES.SELECTING_HAND and G.STATE ~= G.STATES.HAND_SELECTED and G.STATE ~= G.STATES.DRAW_TO_HAND) then
            if self.ability.extra.total_chips > 0 then
                self.ability.extra.total_chips = 0
            end
        end

        -- Track chips scored during individual card scoring
        if context.individual and context.cardarea == G.play and not context.repetition and not context.blueprint and not context.brainstorm then
            -- This tracks chips from individual cards during scoring
            -- No return needed, just tracking
        end

        -- Check at end of round for upgrade
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint and not context.brainstorm then
            -- Get the actual score from the current round
            local current_score = G.GAME.chips or 0
            local blind_chips = G.GAME.blind and G.GAME.blind.chips or 0
            local required_score = self.ability.extra.req * blind_chips
            
            -- Check if we exceeded the requirement
            if current_score >= required_score and required_score > 0 then
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod

                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.RED
                })
            end
            
            -- Reset for next round
            self.ability.extra.total_chips = 0
            self.ability.extra.required_chips = 0
        end
    end
    
    -- Animation update function
   
end
if config.riskyJoker then
    -- Create Joker
    -- Create Joker
    -- Create Joker
    local risky_steps = {
        loc = {
            name = "Risky Steps",
            text = {
                "{C:green}#2# in #1#{} chance to gain",
                "{X:mult,C:white} X#4#{} Mult and downgrade",
                "{C:attention}poker hand{} by {C:attention}1{}",
                "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Risky Steps",
        slug = "j_risky_steps",
        px = 142, 
        py = 190,
        ability = {
            name = "Risky Steps",
            set = "Joker",
            extra = {
                odds = 2,
                Xmult = 1,
                Xmult_mod = 0.2,
              
            }
        },
        rarity = 3,  -- Uncommon rarity
        cost = 6, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }
    
    -- Initialize Joker
    init_joker(risky_steps)
    
    -- Set local variables
    function SMODS.Jokers.j_risky_steps.loc_def(card)
        return { 
            card.ability.extra.odds, 
            "" .. (G.GAME and G.GAME.probabilities.normal or 1),
            card.ability.extra.Xmult, card.ability.extra.Xmult_mod
        }
    end
    
    -- Calculate
    SMODS.Jokers.j_risky_steps.calculate = function(self, context)
        -- Check when scoring (using same pattern as Checklist joker)
        if context.cardarea == G.jokers and context.before and not self.debuff and not context.blueprint then
            -- Check if the current hand level is greater than 1
            if G.GAME.hands[context.scoring_name].level > 1 then
            if pseudorandom('risk') < G.GAME.probabilities.normal/self.ability.extra.odds then
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                
                    
                    return {
                        card = self,
                        level_up_hand(self.children.animatedSprite, context.scoring_name, nil, -1),
                                card_eval_status_text(self, "extra", nil, nil, nil, {
                                    message = localize {
                                        type = "variable",
                                        key = "a_xmult",
                                        vars = { self.ability.extra.Xmult }
                                    },
                                    colour = G.C.MULT
                                })
                    }
    
                end
            end
    
            
        end
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
        end
       
end
if config.theMistressJoker then
    -- Create Joker
    local the_mistress = {
        loc = {
            name = "The Mistress",
            text = {
                "Scored {C:attention}Queens{}",
                "give {X:mult,C:white}X#1#{} Mult",
                "when scored"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "The Mistress",
        slug = "j_the_mistress",
        px = 142, 
        py = 190,
        ability = {
            name = "The Mistress",
            set = "Joker",
            extra = {
                Xmult = 1.5,
              
            }
        },
        rarity = 3,
        cost = 10, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(the_mistress)
   

    -- Set local variables
    function SMODS.Jokers.j_the_mistress.loc_def(card)
        return { card.ability.extra.Xmult }
    end

    -- Calculate
    SMODS.Jokers.j_the_mistress.calculate = function(self, context)
        if context.cardarea == G.play and context.individual and not context.repetition then
            if context.other_card:get_id() == 12 then  -- 12 is Queen
                return {
                    x_mult = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
    end
   
end

if config.soleMatesTarot then
    local sole_mates = {
        name = "Sole Mates",
        slug = "c_sole_mates",
        px = 142, 
        py = 190,
        config = { max_highlighted = 2 }, -- Requires 2 cards selected
        loc = {
            name = "Sole Mates",
            text = {
                "Select {C:attention}2{} cards.",
                "The {C:attention}left{} card gains the",
                "{C:attention}Enhancement{}, {C:attention}Seal{}, and {C:dark_edition}Edition{}",
                "of the {C:attention}right{} card"
            }
        },
        cost = 3,
        cost_mult = 1.0,
        effect = "Transfer Attributes",
        consumeable = true,
        discovered = true,
        -- Ensure you have c_sole_mates.png in your assets, or set no_sprite to true in init_tarot
    }

    -- Initialize the Tarot
    init_tarot(sole_mates)

    -- Define the usage logic
    SMODS.Tarots.c_sole_mates.use = function(self, area, copier)
        -- Standard Balatro logic: Find the rightmost card (Source) and the other card (Target)
        local rightmost = G.hand.highlighted[1]
        for i=1, #G.hand.highlighted do 
            if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end 
        end
        
        local target_card = nil
        for i=1, #G.hand.highlighted do 
            if G.hand.highlighted[i] ~= rightmost then target_card = G.hand.highlighted[i] end 
        end

        if rightmost and target_card then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    play_sound('tarot1')
                    self:juice_up(0.3, 0.5)
                    return true 
                end 
            }))

            -- Flip the target card
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function() 
                    target_card:flip()
                    play_sound('card1', 1)
                    target_card:juice_up(0.3, 0.3)
                    return true 
                end 
            }))

            -- Apply Attributes
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    -- 1. Copy Ability/Center (Enhancement)
                    -- We verify it isn't the base center to avoid "enhancing" a card into a standard card unless intended
                    local source_center = rightmost.config.center
                    target_card:set_ability(source_center)
                    
                    -- 2. Copy Edition (Foil, Holo, Poly, Negative)
                    -- set_edition takes a table, e.g., {foil = true}
                    local new_edition = rightmost.edition and copy_table(rightmost.edition) or nil
                    target_card:set_edition(new_edition, true)
                    
                    -- 3. Copy Seal (Red, Blue, Gold, Purple)
                    local new_seal = rightmost.seal
                    target_card:set_seal(new_seal, true)

                    return true 
                end 
            }))

            -- Flip back and clean up
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function() 
                    target_card:flip()
                    play_sound('tarot2', 1, 0.6)
                    target_card:juice_up(0.3, 0.3)
                    G.hand:unhighlight_all()
                    return true 
                end 
            }))
        end
    end
end
if config.racerJoker then
    -- Create Joker
    local racer = {
        loc = {
            name = "Racer",
            text = {
                "Gains {X:mult,C:white} X#2# {} Mult if round",
                "is won in {C:attention}1{} hand.",
                "Loses {X:mult,C:white} X#3# {} Mult if round",
                "is not won in {C:attention}1{} hand",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Racer",
        slug = "j_racer",
        ability = {
            name = "Racer",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_gain = 0.25,
                Xmult_loss = 1,
            }
        },
        rarity = 3,
        cost = 8, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(racer)

    -- Set local variables for UI display
    function SMODS.Jokers.j_racer.loc_def(card)
        return { 
            card.ability.extra.Xmult, 
            card.ability.extra.Xmult_gain, 
            card.ability.extra.Xmult_loss 
        }
    end

    -- Calculate
    SMODS.Jokers.j_racer.calculate = function(self, context)
        -- 1. Apply current XMult during scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
    
        -- 2. Check at end of round for scaling/reset
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if G.GAME and G.GAME.current_round then
                -- Condition: Round won in exactly 1 hand
                if G.GAME.current_round.hands_played == 1 then
                    -- Gain Mult
                    self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_gain
                    
                    return {
                        message = localize("k_upgrade_ex"),
                        colour = G.C.MULT,
                        card = self
                    }
                else
                    -- Condition: Not won in 1 hand -> Lose Mult (Floor at X1)
                    if self.ability.extra.Xmult > 1 then
                        self.ability.extra.Xmult = math.max(1, self.ability.extra.Xmult - self.ability.extra.Xmult_loss)
                        
                        return {
                            message = "Slowed down!",
                            colour = G.C.RED,
                            card = self
                        }
                    end
                end
            end
        end
    end
end
-- Add this to the config table at the top of the file











-- Helper function to get Top 10 Jokers
-- Joker Definition
if config.familiarFootsteps then
    -- Joker Definition
    local familiar_footsteps = {
        loc = {
            name = "Familiar Footsteps",
            text = {
                "Sell this card to create",
                "a copy of one of your",
                "{C:attention}Top #1#{} most used Jokers",
                "{C:inactive}(Must have room)"
            }
        },
        ability_name = "Familiar Footsteps",
        slug = "j_familiar_footsteps",
        ability = { 
            name = "Familiar Footsteps",
            set = "Joker",
            extra = 10 -- Tracks the Top N jokers
        },
        px = 142, 
        py = 190,
        rarity = 3, -- Uncommon (Specialist: Deck Manipulation)
        cost = 6,
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = false,
        
    }

    init_joker(familiar_footsteps)

    -- Loc Def (Required to display the #1# variable)
    SMODS.Jokers.j_familiar_footsteps.loc_def = function(card)
        return { card.ability.extra }
    end

    -- Calculate Function
    SMODS.Jokers.j_familiar_footsteps.calculate = function(self, context)
        if context.selling_self and not context.blueprint then
            -- 1. Retrieve Joker Usage History
            local usage = G.PROFILES[G.SETTINGS.profile].joker_usage
            local sorted_jokers = {}
            
            -- Filter and sort usage
            for k, v in pairs(usage) do
                -- Check if it's a Joker and not this specific card
                if k ~= 'j_familiar_footsteps' and G.P_CENTERS[k] and G.P_CENTERS[k].set == 'Joker' then 
                    -- FIX: Handle both number (old format) and table (new format) for usage stats
                    local count_val = 0
                    if type(v) == 'table' then
                        count_val = v.count or 0
                    elseif type(v) == 'number' then
                        count_val = v
                    end

                    if count_val > 0 then
                        table.insert(sorted_jokers, {key = k, count = count_val})
                    end
                end
            end
            
            -- Sort by count descending
            table.sort(sorted_jokers, function(a, b) return a.count > b.count end)

            -- 2. Determine potential spawn
            local top_n = math.min(#sorted_jokers, self.ability.extra)
            local chosen_joker_key = nil
            
            if top_n > 0 then
                -- Create a pool of just the keys from the top N
                local top_list = {}
                for i=1, top_n do 
                    table.insert(top_list, sorted_jokers[i].key) 
                end
                chosen_joker_key = pseudorandom_element(top_list, pseudoseed('familiar_footsteps'))
            end

            -- 3. Check for Space 
            -- (Handling Negative logic: selling a negative creates space, but we must check strictly)
            local space_issue = false
            if #G.jokers.cards >= G.jokers.config.card_limit then
                -- If we are full, we can only spawn if this card was taking up a slot (not negative)
                if self.edition and self.edition.negative then
                    space_issue = true
                end
            end

            -- 4. Execute Effect
            if chosen_joker_key and not space_issue then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.05,
                    func = function()
                        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, chosen_joker_key)
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        card:start_materialize()
                        
                        -- Visual feedback
                        card_eval_status_text(self, 'extra', nil, nil, nil, {
                            message = localize('k_plus_joker'),
                            colour = G.C.BLUE
                        })
                        return true
                    end
                }))
            else
                -- Feedback for failure (No Space or No History)
                local msg = (not chosen_joker_key) and "No History!" or localize('k_no_room_ex')
                card_eval_status_text(self, 'extra', nil, nil, nil, {
                    message = msg,
                    colour = G.C.RED
                })
            end
        end
    end
end


-- Acetone (Spectral)
-- Removes all stickers from a random Joker at the cost of 3 random cards in hand
-- Acetone (Spectral)
-- Removes all stickers from the LEFTMOST Joker at the cost of 3 random cards in hand
-- Usage restricted to when hand is visible (Selecting Hand state)
if config.acetoneSpectral then
    local acetone = {
        loc = {
            name = "Licked Clean",
            text = {
                "Remove {C:attention}all Stickers{}",
                "from the {C:attention}leftmost Joker{},",
                "{C:red}destroy{} {C:attention}3{} random",
                "cards in your hand"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Acetone",
        slug = "c_feet_acetone",
        config = { extra = 3 }, -- Cards to destroy
        cost = 4,
        consumeable = true,
        discovered = true,
    }
    init_spectral(acetone)

    -- Localization
    function SMODS.Spectrals.c_feet_acetone.loc_def(card)
        return {}
    end

    -- Condition: 
    -- 1. Must be in SELECTING_HAND state (Round in progress, hand visible)
    -- 2. Must have at least 3 cards in hand
    -- 3. Leftmost Joker must exist and have at least one sticker
    function SMODS.Spectrals.c_feet_acetone.can_use(card)
        if #G.hand.cards < card.ability.extra then return false end
        
        -- Check leftmost joker (index 1)
        if G.jokers and G.jokers.cards and G.jokers.cards[1] then
            local v = G.jokers.cards[1]
            if v.ability.eternal or v.ability.perishable or v.ability.rental then
                return true
            end
        end
        return false
    end

    -- Effect: Cleanse Leftmost Joker, Destroy 3 Random Hand Cards
    function SMODS.Spectrals.c_feet_acetone.use(card, area, copier)
        local used_tarot = copier or card
        
        -- 1. Identify Target (Leftmost Joker)
        local selected_joker = G.jokers.cards[1]

        -- 2. Select Cards to Destroy (Random)
        local temp_hand = {}
        for k, v in ipairs(G.hand.cards) do temp_hand[#temp_hand+1] = v end
        table.sort(temp_hand, function (a, b) return not a.playing_card or not b.playing_card or a.playing_card < b.playing_card end)
        pseudoshuffle(temp_hand, pseudoseed('acetone_destroy'))

        local destroyed_cards = {}
        for i = 1, card.ability.extra do 
            if temp_hand[i] then
                table.insert(destroyed_cards, temp_hand[i]) 
            end
        end

        -- 3. Visuals & Audio
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                used_tarot:juice_up(0.3, 0.5)
                return true
            end
        }))

        -- 4. Cleanse the Joker
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                selected_joker:juice_up(0.8, 0.5)
                -- Remove attributes
                selected_joker.ability.eternal = nil
                selected_joker.ability.perishable = nil
                selected_joker.ability.rental = nil
                -- Force cost update (removes the $1 rental fee logic)
                selected_joker:set_cost() 
                
                card_eval_status_text(selected_joker, 'extra', nil, nil, nil, {
                    message = "Clean!", 
                    colour = G.C.GREEN
                })
                return true
            end
        }))

        -- 5. Destroy the Cards
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function() 
                for _, v in ipairs(destroyed_cards) do
                    if v.ability and v.ability.name == 'Glass Card' then 
                        v:shatter()
                    else
                        v:start_dissolve()
                    end
                end
                return true 
            end
        }))
        
        -- 6. Trigger removal effects (for Glass Joker, Stone Joker, etc.)
        for i = 1, #G.jokers.cards do
            G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed_cards})
        end

        return true
    end
end

if config.tapDancerJoker then
    local tap_dancer = {
        loc = {
            name = "Icing",
            text = {
                "Gains {X:mult,C:white} X#2# {} Mult for every",
                "{C:attention}hand played{} this round.",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)",
                "{s:0.8}Resets when Blind is selected{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Tap Dancer",
        slug = "j_tap_dancer",
        
        -- 1. Satisfies Native Balatro (Prevents Ghost Hand Inheritance)
        config = { 
            h_hands = 0,
            extra = {
                current_xmult = 1,
                gain = 1
            }
        },
        
        -- 2. Satisfies your init_joker() wrapper (Prevents the crash)
        ability = {
            name = "Tap Dancer",
            set = "Joker",
            extra = {
                current_xmult = 1,
                gain = 1
            }
        },
        
        rarity = 2, -- Uncommon
        cost = 6,
        set = "Joker", 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    init_joker(tap_dancer)

    -- UI Display Logic
    function SMODS.Jokers.j_tap_dancer.loc_def(card)
        -- 3. Failsafe: If the card hasn't fully loaded 'extra' yet, use defaults
        local extra = card.ability and card.ability.extra or { current_xmult = 1, gain = 1 }
        
        return { 
            extra.current_xmult, 
            extra.gain
        }
    end

    SMODS.Jokers.j_tap_dancer.calculate = function(self, context)
        local extra = self.ability.extra
        
        -- 1. RESET: Reset XMult when a new Blind is selected
        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            extra.current_xmult = 1
        end

        -- 2. SCORING: Apply the current XMult during the scoring phase
        if SMODS.end_calculate_context(context) then
            if extra.current_xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={extra.current_xmult}},
                    Xmult_mod = extra.current_xmult,
                    card = self
                }
            end
        end

        -- 3. AFTER HAND: Increase the XMult for the next hand
        if context.after and not context.blueprint and not context.individual and not context.repetition then
            extra.current_xmult = extra.current_xmult + extra.gain
            
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = "X" .. extra.current_xmult .. " Mult",
                colour = G.C.XMULT
            })
            self:juice_up(0.3, 0.5)
        end
    end
end

-- stubbornSoleJoker = true, 
if config.treadmillJoker then
    local treadmill = {
        ability_name = "Treadmill",
        slug = "j_treadmill",
        ability = { 
            extra = {
                perma_gain = 10,
                target_ids = {}, 
                draws_remaining = 0
            } 
        },
        loc = {
            name = "Treadmill",
            text = {
                "Discarded cards return to {C:attention}deck{}",
                "and gain {C:chips}+#1#{} Chips."
            }
        },
        rarity = 1, 
        px = 142, 
        py = 190,
        cost = 4,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false, 
        eternal_compat = true,
    }
    init_joker(treadmill)

    function SMODS.Jokers.j_treadmill.loc_def(card)
        return { card.ability.extra.perma_gain }
    end

    -------------------------------------------------------
    -- 1. CAPTURE DISCARDS: mark cards, buff them, return to deck
    -------------------------------------------------------
    local discard_ref = G.FUNCS.discard_cards_from_highlighted
    G.FUNCS.discard_cards_from_highlighted = function(e, hook)
        local treadmill_jokers = find_joker('Treadmill')
        local discarded_cards = {}
        
        if #treadmill_jokers > 0 then
            for i = 1, #G.hand.highlighted do
                table.insert(discarded_cards, G.hand.highlighted[i])
            end
        end

        -- Let the original discard happen
        discard_ref(e, hook)

        if #treadmill_jokers > 0 and #discarded_cards > 0 then
            local tj = treadmill_jokers[1]
            
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                func = function()
                    tj.ability.extra.target_ids = {}
                    tj.ability.extra.draws_remaining = math.min(2, #discarded_cards)
                    
                    for _, v in ipairs(discarded_cards) do
                        -- Apply permanent chip bonus
                        v.ability.perma_bonus = (v.ability.perma_bonus or 0) + tj.ability.extra.perma_gain
                        -- Track unique ID for forced draw
                        table.insert(tj.ability.extra.target_ids, v.unique_val)
                        -- Move from discard back into deck
                        draw_card(G.discard, G.deck, 90, 'down', nil, v)
                    end
                    
                    tj:juice_up()
                    card_eval_status_text(tj, 'extra', nil, nil, nil, {
                        message = "Workout!", colour = G.C.CHIPS
                    })
                    return true
                end
            }))
        end
    end

    -------------------------------------------------------
    -- 2. STACK THE DECK before hand is drawn
    --    Override draw_from_deck_to_hand to place target
    --    cards on top BEFORE the batch draw begins.
    -------------------------------------------------------
    local draw_to_hand_ref = G.FUNCS.draw_from_deck_to_hand
    G.FUNCS.draw_from_deck_to_hand = function(e)
        local treadmill_jokers = find_joker('Treadmill')
        
        if #treadmill_jokers > 0 then
            local tj = treadmill_jokers[1]
            
            if tj.ability.extra.draws_remaining > 0 and #tj.ability.extra.target_ids > 0 then
                -- Pull target cards to the TOP of the deck (end of array = drawn first)
                local found = 0
                local max_find = tj.ability.extra.draws_remaining
                
                for j, id in ipairs(tj.ability.extra.target_ids) do
                    if found >= max_find then break end
                    
                    for i = 1, #G.deck.cards do
                        if G.deck.cards[i].unique_val == id then
                            local target = table.remove(G.deck.cards, i)
                            -- Push to end of array (top of deck = drawn first)
                            table.insert(G.deck.cards, target)
                            found = found + 1
                            break
                        end
                    end
                end
                
                -- Clean up tracking state
                tj.ability.extra.target_ids = {}
                tj.ability.extra.draws_remaining = 0
                
                if found > 0 then
                    tj:juice_up()
                    card_eval_status_text(tj, 'extra', nil, nil, nil, {
                        message = "Back again!", colour = G.C.CHIPS
                    })
                end
            end
        end
        
        -- Now let the normal draw-to-hand proceed — it'll grab from the top
        return draw_to_hand_ref(e)
    end
end

if config.enchantedStepsJoker then
    -- Create Joker
    local enchanted_steps = {
        loc = {
            name = "Enchanted Steps",
            text = {
                "When {C:attention}Blind{} is selected,",
                "add a random {C:attention}Enhancement{}",
                "to a random {C:attention}regular card{}",
                "in your deck"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Enchanted Steps",
        slug = "j_enchanted_steps",
        px = 142, 
        py = 190,
        ability = {
            name = "Enchanted Steps",
            set = "Joker",
            extra = {
                -- No specific extra variables needed, but good for structure
            }
        },
        rarity = 2,  -- Uncommon
        cost = 5,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(enchanted_steps)

    -- Set local variables (None needed for dynamic display, but required function)
    function SMODS.Jokers.j_enchanted_steps.loc_def(card)
        return {}
    end

    -- Calculate Effect
    SMODS.Jokers.j_enchanted_steps.calculate = function(self, context)
        -- Trigger when a blind is selected
        if context.setting_blind and not self.getting_sliced then
            
            -- Define available enhancements locally to ensure scope access
            local available_enhancements = {
                G.P_CENTERS.m_bonus,
                G.P_CENTERS.m_mult,
                G.P_CENTERS.m_wild,
                G.P_CENTERS.m_glass,
                G.P_CENTERS.m_steel,
                G.P_CENTERS.m_stone,
                G.P_CENTERS.m_gold,
                G.P_CENTERS.m_lucky
            }

            -- Find all regular cards (Base type) in the deck
            local eligible_cards = {}
            for k, v in ipairs(G.deck.cards) do
                if v.config.center == G.P_CENTERS.c_base then
                    table.insert(eligible_cards, v)
                end
            end

            -- If we found regular cards, pick one and enhance it
            if #eligible_cards > 0 then
                local card_to_enhance = pseudorandom_element(eligible_cards, pseudoseed("enchanted_steps_card"))
                local enhancement = pseudorandom_element(available_enhancements, pseudoseed("enchanted_steps_type"))

                G.E_MANAGER:add_event(Event({
                    func = function()
                        -- Apply the enhancement
                        card_to_enhance:set_ability(enhancement)
                        
                        -- Visual feedback on the playing card (even if in deck, it handles logic)
                        card_to_enhance:juice_up()
                        return true
                    end
                }))

                -- Visual feedback on the Joker
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.PURPLE
                })
                
                return true
            end
        end
    end
end

if config.twoLeftFeetJoker then
    -- Create Joker
    local two_left_feet = {
        loc = {
            name = "Pleasure in Failure",
            text = {
                "If a {C:attention}Wheel of Fortune{} fails,",
                "gain {X:mult,C:white}X#1#{} Mult",
                "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Two Left Feet",
        slug = "j_two_left_feet",
        px = 142, 
        py = 190,
        ability = {
            name = "Two Left Feet",
            set = "Joker",
            extra = {
                Xmult_mod = 0.2,  -- Amount to add per wheel failure
                Xmult = 1,
                current_frame = 1,
            max_frames = 89,
            frame_timer = 0,
            frame_delay = 0.2  -- 5 FPS animation      -- Current accumulated mult
            }
        },
        rarity = 2,
        cost = 6, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }
   
    -- Initialize Joker
    init_joker(two_left_feet)
   
    -- Set local variables
    function SMODS.Jokers.j_two_left_feet.loc_def(card)
        return { card.ability.extra.Xmult_mod, card.ability.extra.Xmult }
    end
   
    -- Hook into Card:use_consumeable to detect Wheel of Fortune failures
    local original_use_consumeable = Card.use_consumeable
    Card.use_consumeable = function(self, area, copier)
        -- Only take action for Wheel of Fortune
        if self.ability.name == "The Wheel of Fortune" then
            -- Store snapshot of joker editions before wheel is used
            local joker_editions_before = {}
            for i, joker in ipairs(G.jokers.cards) do
                joker_editions_before[i] = joker.edition
            end
            
            -- Call original function to use the consumable
            original_use_consumeable(self, area, copier)
            
            -- Schedule an event to check after the wheel effect has finished
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.6, -- Delay to ensure wheel effect has completed
                func = function()
                    -- Compare editions before and after to see if wheel succeeded
                    local wheel_succeeded = false
                    for i, joker in ipairs(G.jokers.cards) do
                        if joker_editions_before[i] ~= joker.edition then
                            wheel_succeeded = true
                            break
                        end
                    end
                    
                    -- If wheel failed, find Two Left Feet joker and apply bonus
                    if not wheel_succeeded then
                        for _, joker in ipairs(G.jokers.cards) do
                            if joker.ability.name == "Two Left Feet" then
                                joker.ability.extra.Xmult = joker.ability.extra.Xmult + joker.ability.extra.Xmult_mod
                                
                                -- Show message about Xmult increase
                                card_eval_status_text(joker, "extra", nil, nil, nil, {
                                    message = localize {
                                        type = "variable",
                                        key = "a_xmult",
                                        vars = { joker.ability.extra.Xmult }
                                    },
                                    colour = G.C.MULT
                                })
                                break
                            end
                        end
                    end
                    return true
                end
            }))
            
            return
        end
        
        -- For other consumables, just call the original function
        return original_use_consumeable(self, area, copier)
    end
   
    -- Calculate
    SMODS.Jokers.j_two_left_feet.calculate = function(self, context)
        -- Apply current Xmult at end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
    end
   
end

if config.toeringJoker then
    -- Create Joker
    local toe_ring = {
        loc = {
            name = "Toe Rings",
            text = {
                "Gives {X:mult,C:white}X#1#{} Mult",
                "when balance is",
                "at or below {C:red}$#2#"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Toe Ring",
        slug = "j_toe_ring",
        px = 142, 
        py = 190,
        ability = {
            extra = {
                Xmult = 3,
                req = 3,
               
            }
        },
        rarity = 2,
        cost = 7,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(toe_ring)
    

    -- Set local variables
    function SMODS.Jokers.j_toe_ring.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.req }
    end

    -- Calculate
    SMODS.Jokers.j_toe_ring.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            -- Apply xmult if balance is below negative requirement
            if G.GAME.dollars <= 1 * self.ability.extra.req then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
    end

end
if config.footVarietyJoker then
    -- Create Joker
    local foot_variety = {
        loc = {
            name = "Foot Variety",
            text = {
                "Gains {X:mult,C:white}X#2#{} Mult for each",
                "consecutive hand type",
                "not played this round",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Foot Variety",
        slug = "j_variety",
        px = 142, 
        py = 190,
        ability = {
            name = "Foot Variety",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 0.2,
                last_hand = "None",
              
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6, 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(foot_variety)
    
    -- Set local variables
    function SMODS.Jokers.j_variety.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod, card.ability.extra.last_hand }
    end

    -- Calculate
    SMODS.Jokers.j_variety.calculate = function(self, context)
        -- Check for different hand played and increase multiplier
        if context.before and context.scoring_name and not context.blueprint then
            if self.ability.extra.last_hand ~= "None" and context.scoring_name ~= self.ability.extra.last_hand then
                -- Different hand was played, increase multiplier
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                
                -- Show upgrade message
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    colour = G.C.MULT
                })
            end
            
            -- Record the current hand for next comparison
            self.ability.extra.last_hand = context.scoring_name
        end
            
        -- Apply accumulated Xmult at the end
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
        
        -- Reset at end of round
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            -- Reset the last_hand between rounds but keep the multiplier
            self.ability.extra.last_hand = "None"
        end
    end
   
end
if config.archVoidJoker then
    -- Create Joker
    local arch_void = {
        loc = {
            name = "Arch Void",
            text = {
                "Creates a {C:dark_edition}Blackhole{} ",
                "for every #2#",
                "{C:planet}Planet{} cards used",
                "{C:inactive}(Currently: #1#/#2#){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Arch Void",
        slug = "j_arch_void",
        px = 142, 
        py = 190,
        ability = {
            name = "Arch Void",
            set = "Joker",
            extra = {
                planet_count = 0,
                req = 3,
              
            }
        },
        rarity = 3,
        cost = 8, 
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(arch_void)

    -- Set local variables
    function SMODS.Jokers.j_arch_void.loc_def(card)
        return { card.ability.extra.planet_count, card.ability.extra.req }
    end

    -- Calculate
    SMODS.Jokers.j_arch_void.calculate = function(self, context)
        if context.consumeable and context.consumeable.ability.set == "Planet" and context.using_consumeable then
            self.ability.extra.planet_count = self.ability.extra.planet_count + 1
            
            -- Show message for each planet consumed
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = string.format("Planet %d/%d", self.ability.extra.planet_count, self.ability.extra.req),
                colour = G.C.PLANET
            })
            
            if self.ability.extra.planet_count >= self.ability.extra.req then
                self.ability.extra.planet_count = 0
                
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    G.E_MANAGER:add_event(Event({
                        trigger = "after",
                        delay = 0.4,
                        func = function()
                            local card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, nil,
                            "b_hole")
                            if card then
                                card:set_ability(G.P_CENTERS.c_black_hole)
                                G.consumeables:emplace(card)
                                                                    
                                
                            end
                            return true
                        end
                    }))
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = localize("k_plus_spectral"),
                        colour = G.C.SECONDARY_SET.Spectral
                    })
                else
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = localize("k_no_space_ex")
                    })
                end
            end
        end
    end
 
end

-- Bookends Joker - A common joker that cares about card positions in played hands
-- Add this to the config section: bookendsJoker = true,

-- Add this block inside your SMODS.INIT.Painted function in Painted.lua

if config.bookendsJoker then
    -- ... (Joker definition remains the same for consistency, ensuring initial cost is properly set)
    local bookends_joker = {
        loc = {
            name = "Bookends",
            text = {
                "After {C:attention}#1# rounds{}, sell",
                "this card to earn {C:money}$#2#{}.",
                "Payout decreases by {C:money}$1{} for",
                "every {C:attention}card played{}",
                "{C:inactive}(Currently #3#/#1# rounds){}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Bookends",
        slug = "j_feet_bookends",
        px = 142, 
        py = 190,
        ability = {
            name = "Bookends",
            set = "Joker",
            extra = {
                base_payout = 35,
                rounds_req = 2,
                cards_played = 0,
                rounds_passed = 0,
                active = false,
            }
        },
        rarity = 1,
        cost = 5, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(bookends_joker)

    -- Set local variables for UI display
    function SMODS.Jokers.j_feet_bookends.loc_def(card)
        local rounds_req = card.ability.extra.rounds_req
        -- The true calculated payout for display once the condition is met
        local calculated_payout = math.max(0, card.ability.extra.base_payout - card.ability.extra.cards_played)
        
        -- The sell_cost remains the default value UNTIL the rounds condition is met.
        -- We do NOT explicitly change card.sell_cost here; that logic is moved to Card:sell_card.
        
        return { rounds_req, calculated_payout, card.ability.extra.rounds_passed }
    end

    -- Calculate effect - no score mod, only utility logic
    SMODS.Jokers.j_feet_bookends.calculate = function(self, context)
        -- Hook to count cards played for payout reduction
        if context.cardarea == G.play and context.individual and not context.repetition then
            self.ability.extra.cards_played = self.ability.extra.cards_played + 1
            
            -- Show immediate feedback on payout reduction (optional, but good UX)
            card_eval_status_text(self, "dollars", -1, nil, nil, {
                 message = localize("$").."1".." "..localize('k_reduction'), 
                 colour = G.C.RED
            })
        end

        -- Hook for end of round to track rounds passed
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            -- Increment rounds passed only if the requirement hasn't been met yet
            if self.ability.extra.rounds_passed < self.ability.extra.rounds_req then
                self.ability.extra.rounds_passed = self.ability.extra.rounds_passed + 1
                
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = self.ability.extra.rounds_passed .. "/" .. self.ability.extra.rounds_req,
                    colour = G.C.ORANGE
                })
            end

            if self.ability.extra.rounds_passed == self.ability.extra.rounds_req and not self.ability.extra.active then
                card_eval_status_text(self, "extra", nil, nil, nil, {
                    message = "Active!",
                    colour = G.C.GREEN
                })
                -- Make it bounce continuously
                local eval = function(card) return not card.REMOVED end
                self.ability.extra.active = true
                juice_card_until(self, eval, true)
            end
        
        end
    end
    
    
    local sell_card_ref = Card.sell_card
    function Card:sell_card(...)
        -- Temporary store the original sell_cost, only proceed if this is the Bookends Joker
        if self.ability.name == "Bookends" and self.ability.extra.active then 
            
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.4,
                func = function()
                    ease_dollars(self.ability.extra.base_payout - self.ability.extra.cards_played)
                    return true

                end
            }))
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = "Paid!",
                colour = G.C.SECONDARY_SET.Spectral
            })
        end
        return sell_card_ref(self, ...)

        end
end

if config.bowdownJoker then
    local bow_down = {
        loc = {
            name = "Bow Down",
            text = {
                "All {C:attention}face{} cards are",
                "considered {C:attention}Queens{}"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Bow Down",
        slug = "j_bow_down",
        px = 142, 
        py = 190,
        ability = {
            name = "Bow Down",
            set = "Joker",
            extra = {
                
            }
        },
        rarity = 3,
        cost = 6, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(bow_down)

    -- Store the original get_id function
    local original_get_id = Card.get_id

    -- Override the get_id function for scoring
    function Card:get_id()
        -- Optimization: Manual loop is faster than find_joker because it doesn't create garbage memory
        local bow_down_active = false
        
        -- Only run this check if the card itself isn't debuffed and Jokers exist
        if not self.debuff and G.jokers and G.jokers.cards then
            for i = 1, #G.jokers.cards do
                local joker = G.jokers.cards[i]
                -- Check by Name (safest method) and ensure Joker isn't debuffed
                if joker.ability.name == "Bow Down" and not joker.debuff then
                    bow_down_active = true
                    break
                end
            end
        end

        -- If Bow Down is found and active
        if bow_down_active then
            local id = original_get_id(self)
            -- 11=Jack, 13=King. Return 12 (Queen)
            if id == 11 or id == 13 then return 12 end
            return id
        end

        return original_get_id(self)
    end
   
end
if config.footFettersJoker then
    -- Create Joker
    local foot_fetters = {
        loc = {
            name = "Foot Fetters",
            text = {
                "{C:mult}+#1#{} Mult per hand played",
                "but {C:red}-#2#{} Joker slot",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Foot Fetters",
        slug = "j_fetters",
        px = 142, 
        py = 190,
        ability = {
            name = "Foot Fetters",
            set = "Joker",
            extra = {
                mult_mod = 20,
                every = 1,
                
                slot_reduction_applied = false  -- Track if reduction is currently applied
            }
        },
        rarity = 1,  -- Common rarity
        cost = 4, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }
    
    -- Initialize Joker
    init_joker(foot_fetters)
    
    
    -- Set local variables - this is where we can handle dynamic updates
    function SMODS.Jokers.j_fetters.loc_def(card)
        -- Check if the card is in deck and handle slot management
        if card and card.added_to_deck and G.jokers then
            -- Find if this specific card instance should have its reduction applied
            local should_apply_reduction = false
            for k, v in pairs(G.jokers.cards) do
                if v == card then
                    should_apply_reduction = true
                    break
                end
            end
            
            -- Apply or remove slot reduction based on current state
            if should_apply_reduction and not card.ability.extra.slot_reduction_applied then
                G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.every
                card.ability.extra.slot_reduction_applied = true
            elseif not should_apply_reduction and card.ability.extra.slot_reduction_applied then
                G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.every
                card.ability.extra.slot_reduction_applied = false
            end
        end
        
        return { card.ability.extra.mult_mod, card.ability.extra.every }
    end
    
    -- Calculate
    SMODS.Jokers.j_fetters.calculate = function(self, context)
        -- Apply mult bonus for each hand played
        if SMODS.end_calculate_context(context) then
            return {
                message = localize {
                    type = "variable",
                    key = "a_mult",
                    vars = { self.ability.extra.mult_mod }
                },
                mult_mod = self.ability.extra.mult_mod,
                card = self
            }
        end
    end
    
    -- Hook into Card's add_to_deck function to reduce joker slots when added
    local add_to_deck_foot_fetters_ref = Card.add_to_deck
    function Card:add_to_deck(from_debuff)
        local was_added = self.added_to_deck
        add_to_deck_foot_fetters_ref(self, from_debuff)
        
        -- Only apply reduction if it wasn't already in deck and is now added
        if not was_added and self.added_to_deck and self.ability.name == "Foot Fetters" then
            if not self.ability.extra.slot_reduction_applied then
                G.jokers.config.card_limit = G.jokers.config.card_limit - self.ability.extra.every
                self.ability.extra.slot_reduction_applied = true
            end
        end
    end
    
    -- Hook into Card's remove_from_deck function to restore joker slot when removed
    local remove_from_deck_foot_fetters_ref = Card.remove_from_deck
    function Card:remove_from_deck(from_debuff)
        local was_added = self.added_to_deck
        
        if was_added and self.ability.name == "Foot Fetters" then
            if self.ability.extra.slot_reduction_applied then
                G.jokers.config.card_limit = G.jokers.config.card_limit + self.ability.extra.every
                self.ability.extra.slot_reduction_applied = false
            end
        end
        
        remove_from_deck_foot_fetters_ref(self, from_debuff)
    end
    
    -- Additional hook to handle dynamic slot changes (like from Dagonet)
    -- This ensures the effect persists through slot count changes
    local orig_set_joker_usage = (G and G.jokers and G.jokers.set_joker_usage) or function() end
    if G and G.jokers then
        local orig_jokers_calculate_ref = G.jokers.calculate
        G.jokers.calculate = function(self, ...)
            -- Before calculating, ensure all Foot Fetters cards have their reduction applied
            for k, card in pairs(self.cards or {}) do
                if card.ability.name == "Foot Fetters" and card.added_to_deck then
                    if not card.ability.extra.slot_reduction_applied then
                        self.config.card_limit = self.config.card_limit - card.ability.extra.every
                        card.ability.extra.slot_reduction_applied = true
                    end
                end
            end
            
            if orig_jokers_calculate_ref then
                return orig_jokers_calculate_ref(self, ...)
            end
        end
    end

 
end
if config.suitMultiJoker then
    local suit_mult_joker = {
        loc = {
            name = "Prismatic Soles",
            text = {
                "Gains {X:mult,C:white}X0.1{} Mult for every",
                "scored card of a {C:attention}unique suit{}",
                "in a hand.",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive})"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Prismatic Soles",
        slug = "j_prismatic_soles",
        ability = {
            name = "Prismatic Soles",
            set = "Joker",
            extra = {
                Xmult_per_suit = 0.1,
                current_Xmult = 1,
            }
        },
        rarity = 2, -- Uncommon rarity
        cost = 6, 
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(suit_mult_joker)

    -- Set local variables for text display
    function SMODS.Jokers.j_prismatic_soles.loc_def(card)
        return { card.ability.extra.current_Xmult }
    end

    -- Calculate effect
    SMODS.Jokers.j_prismatic_soles.calculate = function(self, context)
        -- Reset and Calculate during the scoring phase
        if context.before and not context.blueprint then
            local suits_in_hand = {}
            local unique_suit_count = 0

            -- Iterate through scored cards to count unique suits
            for _, card in ipairs(context.scoring_hand) do
                if not card.debuff then
                    local suit = card.base.suit
                    if not suits_in_hand[suit] then
                        suits_in_hand[suit] = true
                        unique_suit_count = unique_suit_count + 1
                    end
                end
            end

            -- Update the current multiplier based on unique suits found
            -- Formula: Base 1.0 + (0.1 * Unique Suits Scored)
            self.ability.extra.current_Xmult = 1 + (self.ability.extra.Xmult_per_suit * unique_suit_count)
        end

        -- Apply the accumulated XMult at the end of scoring
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.current_Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.current_Xmult }
                    },
                    Xmult_mod = self.ability.extra.current_Xmult,
                    card = self
                }
            end
        end
    end
end

-- Common Ground Joker - Uncommon Feet Joker
if config.commonground then
    local common_ground = {
        loc = {
            name = "Common Ground",
            text = {
                "{C:blue}Common{} Joker",
                "each give {X:mult,C:white}X#1#{} Mult",
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Common Ground",
        slug = "j_common_ground",
        px = 142, 
        py = 190,
        ability = {
            extra = {
                xmult = 1.3,  -- X2 mult per common joker
            }
        },
        rarity = 2,  -- Uncommon rarity [[1]][doc_1]
        cost = 6,    -- Same cost as other uncommon feet jokers [[1]][doc_1]
        set = "Feet Joker", 
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
         
    }

-- Initialize Joker
init_joker(common_ground) 

-- Set local variables for text display
function SMODS.Jokers.j_common_ground.loc_def(card)
    return { card.ability.extra.xmult }
end

-- Calculate effect - counts common jokers and applies multiplier
SMODS.Jokers.j_common_ground.calculate = function(self, context)
        -- Trigger for each other joker during joker evaluation
        if context.other_joker and context.other_joker ~= self then
            if context.other_joker.config.center.rarity == 1 then -- Common joker
                G.E_MANAGER:add_event(Event({
                    func = function()
                        context.other_joker:juice_up(0.5, 0.5)
                        return true
                    end
                }))
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.xmult}},
                    Xmult_mod = self.ability.extra.xmult
                }
            end
        end
end
end

if config.sacrificialSolesJoker then
    -- Create Joker
    local sacrificial_soles = {
        loc = {
            name = "Sacrificial Soles",
            text = {
                "Halves {C:money}money{},",
                "gains {C:mult}+#1#{} Mult per",
                "{C:money}$1{} sacrificed",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sacrificial Soles",
        slug = "j_sacrificial_soles",
        px = 142, 
        py = 190,
        ability = {
            name = "Sacrificial Soles",
            set = "Joker",
            extra = {
                mult_mod = 2,
                mult = 0,
                
            }
        },
        rarity = 2,  -- Uncommon
        cost = 8, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true
    }

    -- Initialize Joker
    init_joker(sacrificial_soles)
    
    -- Set local variables
    function SMODS.Jokers.j_sacrificial_soles.loc_def(card)
        return { card.ability.extra.mult_mod, card.ability.extra.mult }
    end

    -- Calculate
   

    -- Global accumulator for batching messages
    local sacrificial_batch = {
        active = false,
        total_mult_gained = {},  -- indexed by joker
        event_scheduled = false
    }

    -- Hook into the dollar adding function to halve gains and add mult
    local ease_dollars_ref = ease_dollars
    function ease_dollars(val, silent, ...)
        -- Only process positive dollar gains (not losses)
        if val > 0 and G.jokers then
            local sacrificial_jokers = {}
            local total_sacrificed = 0
            
            -- Find all Sacrificial Soles jokers
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.name == "Sacrificial Soles" then
                    table.insert(sacrificial_jokers, joker)
                end
            end
            
            -- If we have any Sacrificial Soles jokers, process them
            if #sacrificial_jokers > 0 then
                -- Calculate the amount sacrificed (half of the original value, only once)
                local sacrificed = math.floor(val / 2)
                total_sacrificed = sacrificed
                
                -- Add mult to ALL Sacrificial Soles jokers and track for batching
                for _, joker in ipairs(sacrificial_jokers) do
                    local mult_gained = sacrificed * joker.ability.extra.mult_mod
                    joker.ability.extra.mult = joker.ability.extra.mult + mult_gained
                    
                    -- Initialize or accumulate in batch tracker
                    if not sacrificial_batch.total_mult_gained[joker] then
                        sacrificial_batch.total_mult_gained[joker] = 0
                    end
                    sacrificial_batch.total_mult_gained[joker] = sacrificial_batch.total_mult_gained[joker] + mult_gained
                    
                    -- Mark batch as active
                    sacrificial_batch.active = true
                end
                
                -- Schedule the batched message display if not already scheduled
                if sacrificial_batch.active and not sacrificial_batch.event_scheduled and sacrificed > 0 then
                    sacrificial_batch.event_scheduled = true
                    G.E_MANAGER:add_event(Event({
                        trigger = "before",
                        delay = 0.1,  -- Small delay to collect all calls in this frame
                        func = function()
                            -- Display accumulated messages for each joker
                            for joker, total_mult in pairs(sacrificial_batch.total_mult_gained) do
                                if joker.added_to_deck and total_mult > 0 then
                                    card_eval_status_text(joker, "extra", nil, nil, nil, {
                                        message = localize("k_upgrade_ex")
                                    })
                                end
                            end
                            
                            -- Reset the batch tracker
                            sacrificial_batch.active = false
                            sacrificial_batch.total_mult_gained = {}
                            sacrificial_batch.event_scheduled = false
                            return true
                        end
                    }))
                end
                
                -- Return the reduced amount (original value minus what was sacrificed)
                return ease_dollars_ref(val - total_sacrificed, silent, ...)
            end
        end
        
        -- Default behavior if no joker or negative value
        return ease_dollars_ref(val, silent, ...)
    end
    SMODS.Jokers.j_sacrificial_soles.calculate = function(self, context)
        -- Apply the accumulated multiplier
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.mult > 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_mult",
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
    
end

if config.fleetFeetJoker then
    -- Create Joker
    local fleet_feet = {
        loc = {
            name = "Fleet Feet",
            text = {
                "{X:mult,C:white}X#1#{} Mult on first",
                "hand of round"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Fleet Feet",
        slug = "j_fleet",
        px = 142, 
        py = 190,
        ability = {
            name = "Fleet Feet",
            set = "Joker",
            extra = {
                Xmult = 3,
                current_frame = 1,
                max_frames = 142,
                frame_timer = 0,
                frame_delay = 0.2  -- 5 FPS animation
            }
        },
        rarity = 2,  -- Uncommon rarity
        cost = 6, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(fleet_feet)


    -- Set local variables
    function SMODS.Jokers.j_fleet.loc_def(card)
        return { card.ability.extra.Xmult }
    end

    -- Calculate effect
    SMODS.Jokers.j_fleet.calculate = function(self, context)
        -- Apply X3 multiplier but only for the first hand played in a round
        if SMODS.end_calculate_context(context) then
            if G.GAME.current_round.hands_played == 0 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end
    end

end
if config.poolpartyjoker then
    local pool_party = {
        loc = {
            name = "Pool Party",
            text = {
                "Played {C:attention}#2#s{} give",
                "{X:mult,C:white} X#3# {} Mult when scored",
                "{s:0.8}Rank changes every hand played",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
            }
        },
        ability_name = "Pool Party",
        slug = "j_pool_party",
        px = 142, py = 190,
        ability = {
            name = "Pool Party",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 0.5,
                target_rank = nil,
                triggered_this_hand = false
            }
        },
        rarity = 2,
        cost = 6,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        
    }
    
    init_joker(pool_party)

    -- 1. Display and Initialization
    SMODS.Jokers.j_pool_party.loc_def = function(card)
        -- Initialize rank silently if missing
        if not card.ability.extra.target_rank then
            card.ability.extra.target_rank = pseudorandom_element({2,3,4,5,6,7,8,9,10,11,12,13,14}, pseudoseed('pool_party_init'))
        end
        
        -- We return "???" for #2# so the player cannot see the rank in the description
        return { 
            card.ability.extra.Xmult, 
            "???", 
            card.ability.extra.Xmult_mod
        }
    end

    -- 2. Calculation Logic
    SMODS.Jokers.j_pool_party.calculate = function(self, context)
        
        -- A. SCALING (The "Found It" Moment)
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card:get_id() == self.ability.extra.target_rank and not self.ability.extra.triggered_this_hand then
                
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                self.ability.extra.triggered_this_hand = true
                
                -- Give visual feedback that they found the hidden rank
                return {
                    message = "Splash!", -- Thematic "Found it" message
                    colour = G.C.XMULT,
                    card = self
                }
            end
        end

        -- B. SCORING
        if SMODS.end_calculate_context(context) then
             if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult,
                    card = self
                }
            end
        end

        -- C. MECHANIC: Change Rank Hiddenly
        if context.after and not context.blueprint and not context.individual and not context.repetition then
            self.ability.extra.triggered_this_hand = false

            local ranks = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
            local old_rank = self.ability.extra.target_rank
            local new_rank = old_rank
            
            while new_rank == old_rank do
                new_rank = pseudorandom_element(ranks, pseudoseed("pool_party"))
            end
            
            self.ability.extra.target_rank = new_rank
            
            -- Visual Feedback: Just juice the card so they know it moved, but don't show text
            G.E_MANAGER:add_event(Event({
                func = function() 
                    -- Just a simple animation to indicate the mechanic triggered
                    self:juice_up(0.3, 0.3)
                    
                    -- Optional: A generic message saying it moved, without saying where
                    card_eval_status_text(self, "extra", nil, nil, nil, {
                        message = "?",
                        colour = G.C.PURPLE
                    })
                    return true
                end
            }))
        end
    end
end

if config.dominantFootJoker then
    -- Create Joker Definition
    local dominant_foot = {
        loc = {
            name = "Dominant Foot",
            text = {
                "Gives {X:mult,C:white}X#1#{} Mult if a {C:attention}Boss Blind{}",
                "is selected. Otherwise, gains {C:mult}+#2#{} Mult",
                "permanently for every {C:attention}hand played{}.",
                "{C:inactive}(Currently: #3#)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Dominant Foot",
        slug = "j_dominant_foot",
        ability = {
            name = "Dominant Foot",
            set = "Joker",
            extra = {
                xmult = 3,
                mult_gain = 2,      -- Amount gained per hand played
                current_mult = 0,    -- Permanent accumulated Mult
                is_boss_active = false -- Tracks if we are currently in a Boss Blind
            }
        },
        rarity = 2,  -- Uncommon
        cost = 6,
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(dominant_foot)

    -- UI Display Logic
    function SMODS.Jokers.j_dominant_foot.loc_def(card)
        local current_effect_text = ""
        
        -- If in a Boss, show the X3. If not, show the accumulated Mult.
        if G.GAME.blind and G.GAME.blind.boss then
            current_effect_text = "X" .. card.ability.extra.xmult
        else
            current_effect_text = "+" .. card.ability.extra.current_mult .. " Mult"
        end

        return {
            card.ability.extra.xmult,
            card.ability.extra.mult_gain,
            current_effect_text
        }
    end

    -- Calculation Logic
    SMODS.Jokers.j_dominant_foot.calculate = function(self, context)
        
        -- 1. SCALING: Gain Mult for every hand played (if not a Boss)
        if context.before and not context.blueprint then
            if not (G.GAME.blind and G.GAME.blind.boss) then
                self.ability.extra.current_mult = self.ability.extra.current_mult + self.ability.extra.mult_gain
                
                return {
                    extra = { focus = self, message = localize('k_upgrade_ex') },
                    card = self,
                    colour = G.C.MULT
                }
            end
        end

        -- 2. SCORING: Apply effects
        if SMODS.end_calculate_context(context) then
            -- If it's a Boss, provide X3 Mult
            if G.GAME.blind and G.GAME.blind.boss then
                return {
                    message = localize{type='variable', key='a_xmult', vars={self.ability.extra.xmult}},
                    Xmult_mod = self.ability.extra.xmult,
                    card = self
                }
            -- If it's a normal blind, provide the accumulated Mult
            elseif self.ability.extra.current_mult > 0 then
                return {
                    message = localize{type='variable', key='a_mult', vars={self.ability.extra.current_mult}},
                    mult_mod = self.ability.extra.current_mult,
                    card = self
                }
            end
        end

        -- 3. VISUALS: Trigger on blind selection
        if context.setting_blind and not self.getting_sliced then 
            if G.GAME.blind and G.GAME.blind.boss then 
                -- Transition to "Active" boss state
                self.ability.extra.is_boss_active = true
                self:flip()
                self.children.center:set_sprite_pos({ x = 1, y = 0 }) 
                play_sound("moan") -- Thematic sound from Painted.lua
                self:flip()
            else
                -- Ensure base sprite for non-bosses
                self.ability.extra.is_boss_active = false
                self.children.center:set_sprite_pos({ x = 0, y = 0 }) 
            end
        end

        -- 4. RESET VISUALS: End of round cleanup
        if context.end_of_round and not context.individual and not context.repetition then 
            if self.ability.extra.is_boss_active then
                self:flip()
                self.children.center:set_sprite_pos({ x = 0, y = 0 }) 
                self:flip()
            end
            self.ability.extra.is_boss_active = false
        end
    end
end
if config.sweetDreamsJoker then
    -- Create Joker
    local sweet_dreams = {
        loc = {
            name = "Sweet Dreams",
            text = {
                "{X:mult,C:white} X#2#{} Mult per {C:spectral}Spectral{} ",
                " card used this run",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Sweet Dreams",
        slug = "j_sweet_dreams",
        px = 142, 
        py = 190,
        ability = {
            name = "Sweet Dreams",
            set = "Joker",
            extra = {
                Xmult = 1,
                Xmult_mod = 1,

            }
        },
        rarity = 3,
        cost = 6, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
    }

    -- Initialize Joker
    init_joker(sweet_dreams)

    -- Set local variables
    function SMODS.Jokers.j_sweet_dreams.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end

    -- Calculate
    SMODS.Jokers.j_sweet_dreams.calculate = function(self, context)
        -- Add Xmult when Spectral card is used
        if context.consumeable and context.consumeable.ability.set == "Spectral" and context.using_consumeable and not context.blueprint then
            self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
            -- Show message
            card_eval_status_text(self, "extra", nil, nil, nil, {
                message = localize {
                    type = "variable",
                    key = "a_xmult",
                    vars = { self.ability.extra.Xmult }
                },
                colour = G.C.MULT
            })
        end

        -- Apply current Xmult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize {
                        type = "variable",
                        key = "a_xmult",
                        vars = { self.ability.extra.Xmult }
                    },
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
            
    end
   
end
local original_save = Card.save
function Card:save()
    local save_table = original_save(self)
    
    -- Ensure rank is always a string
    if save_table.base and save_table.base.rank and type(save_table.base.rank) == "number" then
        -- Convert numeric ranks back to string format
        local rank_map = {
            [2] = "2", [3] = "3", [4] = "4", [5] = "5", [6] = "6", [7] = "7", [8] = "8", [9] = "9", [10] = "10",
            [11] = "J", [12] = "Q", [13] = "K", [14] = "A"
        }
        save_table.base.rank = rank_map[save_table.base.rank] or tostring(save_table.base.rank)
    end
    
    return save_table
end
-- Create the challenge table


-- Center odd shaped Jokers

end


------------------------------------------------------
---------LEGENDARIES---------------------------------
-----------------------------------------------------

if config.solarRevolutionJoker then
    -- 1. ANIMATION SETUP
    local frames_solar_count = 479
    local frames_per_sheet = 50
    
    local function register_solar_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_solar_revolution_sheet_" .. sheet_idx,
                path = "animations/solar/j_solar_revolution_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    register_solar_sheets(frames_solar_count)

    -- 2. CREATE JOKER
    local solar_revolution = {
        loc = {
            name = "Solar Revolution",
            text = {
                "Each scored card gives",
                "{X:mult,C:white} X#1# {} Mult for each",
                "held {C:planet}Planet{}",
                "matching the played hand type"
            }
        },
        px = 142, 
        py = 190,
        ability_name = "Solar Revolution",
        slug = "j_solar_revolution",
        ability = {
            name = "Solar Revolution",
            set = "Joker",
            extra = {
                Xmult = 2,
                -- Animation Variables
                current_frame = 1,
                max_frames = frames_solar_count,
                frame_timer = 0,
                frame_delay = 0.016,
                last_real_time = nil
            }
        },
        rarity = 4, -- Legendary Rarity
        cost = 20,
        set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = true,
        eternal_compat = true,
        atlas = "j_solar_revolution_sheet_1" -- Links to the first sheet

        
    }

    -- Initialize Joker (passing true bypasses static sprite creation)
    init_joker(solar_revolution, true)

    -- 3. LOCALIZATION
    function SMODS.Jokers.j_solar_revolution.loc_def(card)
        return { card.ability.extra.Xmult }
    end

    -- 4. SCORING LOGIC
    SMODS.Jokers.j_solar_revolution.calculate = function(self, context)
        if context.individual and context.cardarea == G.play and not context.repetition then
            local hand_played = context.scoring_name
            local matching_planets = 0
            
            if G.consumeables and G.consumeables.cards then
                for i = 1, #G.consumeables.cards do
                    local cons = G.consumeables.cards[i]
                    if cons.ability.set == "Planet" and cons.config.center.config.hand_type == hand_played then
                        matching_planets = matching_planets + 1
                    end
                end
            end

            if matching_planets > 0 then
                local total_xmult = self.ability.extra.Xmult ^ matching_planets
                return {
                    x_mult = total_xmult,
                    card = self
                }
            end
        end
    end

    -- 5. ANIMATION LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        if self.ability and self.ability.name == "Solar Revolution" and self.added_to_deck then
            local current_real_time = love.timer.getTime()
            if not self.ability.extra.last_real_time then 
                self.ability.extra.last_real_time = current_real_time 
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = (self.ability.extra.current_frame % self.ability.extra.max_frames) + 1
                
                local sheet_idx = math.ceil(self.ability.extra.current_frame / 50)
                local frame_in_sheet = ((self.ability.extra.current_frame - 1) % 50)
                local sheet_atlas_key = "j_solar_revolution_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end

if config.blacked then
    -- Create Joker
    local blacked = {
        loc = {
            name = "Blacked Out",
            text = {
                "If {C:attention}Boss Blind{}",
                "is defeated in {C:attention}1 Hand{},",
                "random {C:attention}Joker{} becomes",
                "{C:dark_edition}Negative{}"
            }
        },
        ability_name = "Blacked",
        slug = "j_feet_blacked", 
        ability = {
            name = "Blacked",
            set = "Joker",
            extra = {
                possible_targets = 0,
                current_frame = 1,
                max_frames = 45,
                frame_timer = 0,
                frame_delay = 0.016
            }
        },
        rarity = 4,
        px = 142, 
        py = 190,
        cost = 12, set = "Feet Joker",
        unlocked = true,
        discovered = true,
        blueprint_compat = false,
        eternal_compat = true,
        
    }

    -- Initialize Joker
    init_joker(blacked)
    for i = 2, 45 do
        local sprite_key = blacked.slug .. "_" .. i
        local sprite = SMODS.Sprite:new(
            sprite_key,
            SMODS.findModByID("Painted").path,
            sprite_key .. ".png",
            142,
            190,
            "asset_atli"
        )
        sprite:register()
    end

    -- Update Tooltip to count valid targets
    function SMODS.Jokers.j_feet_blacked.loc_def(card)
        local possible_targets = 0
        if G.jokers and G.jokers.cards then
            for _, joker in ipairs(G.jokers.cards) do
                -- Check: Not this card, is a Joker, has no edition
                if joker ~= card and joker.ability.set == "Joker" and 
                   not joker.edition then
                    possible_targets = possible_targets + 1
                end
            end
        end
        card.ability.extra.possible_targets = possible_targets
        return { card.ability.extra.possible_targets }
    end

    -- Calculate logic: Boss blind & exactly 1 hand played
-- 1. ADDED 'card' TO THE PARAMETERS
-- Calculate logic: Boss blind & exactly 1 hand played
SMODS.Jokers.j_feet_blacked.calculate = function(self, context)
    -- GUARD CLAUSE: If context is nil (e.g., during forced transitions from other mods), stop here.
    if not context then return end

    if context.end_of_round and not context.individual and not context.repetition then
        if G.GAME.blind.boss and G.GAME.current_round.hands_played == 1 then
            
            -- We wrap the ENTIRE logic inside the event. 
            -- This forces Blacked Out to wait until the engine finishes whatever
            -- Glass Slipper (or any other Joker) is currently doing.
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.5, -- Gives Slipper plenty of time to finish
                func = function()
                    
                    -- Scan for Jokers right at the moment the event triggers
                    local possible_jokers = {}
                    if G.jokers and G.jokers.cards then
                        for _, joker in ipairs(G.jokers.cards) do
                            -- Use 'card' instead of 'self'
                            -- Added safeguard: make sure we don't target destroyed cards
                            if joker ~= self and joker.ability.set == "Joker" and 
                               not joker.edition and not joker.getting_sliced then
                                table.insert(possible_jokers, joker)
                            end
                        end 
                    end
                    
                    if #possible_jokers > 0 then
                        local target_joker = pseudorandom_element(possible_jokers, pseudoseed("blacked"))
                        
                        if target_joker.edition and target_joker.edition.negative then
                            G.jokers.config.card_limit = G.jokers.config.card_limit - 1
                        end
                        
                        target_joker:set_edition({ negative = true }, true)
                        target_joker:juice_up(0.3, 0.5)
                        
                        -- Use 'card' instead of 'self'
                        card_eval_status_text(self, "extra", nil, nil, nil, {
                            message = localize("k_upgrade_ex"),
                            colour = G.C.DARK_EDITION -- A nice visual touch for Negative
                        })
                    end
                    
                    return true
                end
            }))
        end
    end
end

    -- Animation Logic (Maintained from original)
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        if self.ability.name == "Blacked" and self.added_to_deck then
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + (dt / G.SETTINGS.GAMESPEED)
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                local sprite_key = (self.ability.extra.current_frame == 1) and self.config.center.key or (self.config.center.key .. "_" .. self.ability.extra.current_frame)
                if G.ASSET_ATLAS[sprite_key] and self.children.center then
                    self.children.center.atlas = G.ASSET_ATLAS[sprite_key]
                    self.children.center:set_sprite_pos({x = 0, y = 0})
                end
                self.ability.extra.frame_timer = 0
            end
        end
    end
end



if config.perfectFitJoker then
    -- 1. ANIMATION SETUP
    local frames_fit_count = 2098 -- Set this to your actual frame count
    local frames_per_sheet = 50
    
    local function register_fit_sheets(total_frames)
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_perfect_fit_sheet_" .. sheet_idx,
                path = "animations/fit/j_perfect_fit_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    register_fit_sheets(frames_fit_count)
    
    -- 2. JOKER DEFINITION (Formatted identically to Painted.lua standard)
    local perfect_fit = {
        loc = {
            name = "The Perfect Fit",
            text = {
                "Copies the ability of",
                "both {C:attention}adjacent{} Jokers"
            }
        },
        px = 142,
        py = 190,
        ability_name = "The Perfect Fit",
        slug = "j_perfect_fit",
        ability = {
            name = "The Perfect Fit",
            set = "Joker",
            extra = {
                -- Animation Variables
                current_frame = 1,
                max_frames = frames_fit_count,
                frame_timer = 0,
                frame_delay = 0.016
            }
        },
        rarity = 4, -- Legendary Rarity
        cost = 20,
        unlocked = true,
        discovered = true,
        blueprint_compat = false, -- False to prevent infinite recursion loops
        eternal_compat = true,
        atlas = "j_perfect_fit_sheet_1" -- Links to the first sheet
    }
    
    -- init_joker uses the structure seen throughout Painted.lua. True prevents creating a default sprite
    init_joker(perfect_fit, true) 
    
    -- 3. UI DISPLAY DYNAMIC TEXT (Adds the Blueprint "Compatible/Incompatible")
    function SMODS.Jokers.j_perfect_fit.loc_def(card)
        local l_text = "None"
        local r_text = "None"
        if G.jokers and G.jokers.cards then
            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then my_pos = i; break end
            end
            if my_pos then
                local left = G.jokers.cards[my_pos - 1]
                local right = G.jokers.cards[my_pos + 1]

                if left then
                    l_text = left.config.center.blueprint_compat and "Compatible" or "Incompatible"
                end
                if right then
                    r_text = right.config.center.blueprint_compat and "Compatible" or "Incompatible"
                end
            end
        end
        -- These fill in the #1# and #2# inside the localized text
        return { l_text, r_text }
    end

    -- 4. CALCULATION LOGIC
    SMODS.Jokers.j_perfect_fit.calculate = function(self, context)
        local my_pos = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == self then my_pos = i; break end
        end

        if my_pos then
            local left_joker = G.jokers.cards[my_pos - 1]
            local right_joker = G.jokers.cards[my_pos + 1]

            local function get_neighbor_effect(neighbor)
                if neighbor and neighbor ~= self then
                    context.blueprint = (context.blueprint and (context.blueprint + 1)) or 1
                    local prev_blueprint_card = context.blueprint_card
                    context.blueprint_card = context.blueprint_card or self
                    
                    if context.blueprint > #G.jokers.cards + 1 then
                        if context.blueprint <= 1 then context.blueprint = nil else context.blueprint = context.blueprint - 1 end
                        context.blueprint_card = prev_blueprint_card
                        return nil
                    end

                    local effect = neighbor:calculate_joker(context)
                    
                    -- CRITICAL LUA FIX: Ensure blueprint clears to strictly nil, not 0!
                    if context.blueprint == 1 then
                        context.blueprint = nil
                    else
                        context.blueprint = context.blueprint - 1
                    end
                    context.blueprint_card = prev_blueprint_card

                    return effect
                end
                return nil
            end

            local left_effect = nil
            local right_effect = nil
            
            -- Evaluate Left 
            if left_joker and left_joker.config.center.blueprint_compat then
                left_effect = get_neighbor_effect(left_joker)
            end
            
            -- Evaluate Right
            if right_joker and right_joker.config.center.blueprint_compat then
                right_effect = get_neighbor_effect(right_joker)
            end

            -- If neither triggered, return nil
            if not left_effect and not right_effect then
                return nil
            end

            -- If only one activated, return that table naturally
            if left_effect and not right_effect then
                left_effect.card = self
                return left_effect
            end

            if right_effect and not left_effect then
                right_effect.card = self
                return right_effect
            end

            -- If BOTH triggered in the same context (e.g. they both give Mult/Chips or Retriggers):
            -- We merge their payloads so the base game reads and scores both!
            local combined = {
                message = "Perfect Fit!",
                colour = G.C.BLUE,
                card = self
            }
            
            local function merge(eff)
                if eff.mult_mod then combined.mult_mod = (combined.mult_mod or 0) + eff.mult_mod end
                if eff.Xmult_mod then combined.Xmult_mod = (combined.Xmult_mod or 1) * eff.Xmult_mod end
                if eff.chip_mod then combined.chip_mod = (combined.chip_mod or 0) + eff.chip_mod end
                if eff.repetitions then combined.repetitions = (combined.repetitions or 0) + eff.repetitions end
                if eff.dollars then combined.dollars = (combined.dollars or 0) + eff.dollars end
                if eff.message then combined.message = eff.message end
                if eff.colour then combined.colour = eff.colour end
                
                for k, v in pairs(eff) do
                    if combined[k] == nil then combined[k] = v end
                end
            end

            merge(left_effect)
            merge(right_effect)
            
            return combined
        end
    end

    -- 5. ANIMATION UPDATE LOOP
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        -- ADDED: Safely verify `self.ability` exists first to prevent crashes on non-card objects
        if self.ability and self.ability.name == "The Perfect Fit" and self.added_to_deck then
            local current_real_time = love.timer.getTime()
            if not self.ability.extra.last_real_time then self.ability.extra.last_real_time = current_real_time end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = (self.ability.extra.current_frame % self.ability.extra.max_frames) + 1
                
                local sheet_idx = math.ceil(self.ability.extra.current_frame / 50)
                local frame_in_sheet = ((self.ability.extra.current_frame - 1) % 50)
                local sheet_atlas_key = "j_perfect_fit_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end


if config.centipedeJoker then
    
    local frames_centipede_count = 407
    
    -- Helper to register sprite sheets
    local function register_centipede_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            
            SMODS.Atlas({
                key = "j_centipede_sheet_" .. sheet_idx,
                path = "animations/j_centipede_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    -- Register sheets
    register_centipede_sheets(frames_centipede_count)

    local centipede = SMODS.Joker:new(
        "The Prize", 
        "j_centipede", 
        { 
            extra = { 
                j_slots = 3,
                cost = 2,
                current_frame = 1,
                max_frames = frames_centipede_count,
                frame_timer = 0,
                frame_delay = 0.016,
                hand_counter = 0
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "The Prize",
            text = {
                "{C:attention}+3{} Joker Slots.",
                "You can no longer",
                "earn {C:attention}Interest{}"
            }
        },
        4, -- rarity
        5, 
        true, 
        true, 
        false, 
        true 
    )

    centipede.atlas = "j_centipede_sheet_1"
    centipede:register()

    -- 1. Clean UI definition (No game state logic)
    function SMODS.Jokers.j_centipede.loc_def(card)
        return {}
    end

    -- 2. Add Stats safely when acquired
    SMODS.Jokers.j_centipede.add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.j_slots
            
            -- Block Interest 
            if not G.GAME.modifiers.no_interest_prize then 
                G.GAME.modifiers.no_interest_prize = 0 
            end
            G.GAME.modifiers.no_interest_prize = G.GAME.modifiers.no_interest_prize + 1
            G.GAME.modifiers.no_interest = true
        end
    end

    -- 3. Remove Stats safely when sold or destroyed
    SMODS.Jokers.j_centipede.remove_from_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.j_slots
            
            -- Restore Interest Logic safely
            if G.GAME.modifiers.no_interest_prize then
                G.GAME.modifiers.no_interest_prize = G.GAME.modifiers.no_interest_prize - 1
                if G.GAME.modifiers.no_interest_prize <= 0 then
                    G.GAME.modifiers.no_interest = false
                end
            end
        end
    end

    -- Visual Animation Updater
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        if self.ability.name == "The Prize" and self.added_to_deck then
            -- Use real-world time for consistent 60fps
            local current_real_time = love.timer.getTime()
            
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
    
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                
                -- SPRITE SHEET LOGIC
                local frame_num = self.ability.extra.current_frame
                local frames_per_sheet = 50
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_centipede_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end





    if config.goldencrown then
    
    local frames_bigfoot_count = 328
    
    -- Helper to register sprite sheets
    local function register_bigfoot_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            
            SMODS.Atlas({
                key = "j_bigfoot_sheet_" .. sheet_idx,
                path = "animations/j_bigfoot_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    -- Register sheets
    register_bigfoot_sheets(frames_bigfoot_count)
    
    local bigfoot = SMODS.Joker:new(
        "Royalty", 
        "j_bigfoot", 
        { 
            extra = { 
                Xmult = 1,
                Xmult_mod = 0.5,
                cost = 2,
                current_frame = 1,
                max_frames = frames_bigfoot_count,
                frame_timer = 0,
                frame_delay = 0.016,
                hand_counter = 0
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Royalty",
            text = {
                "{X:mult,C:white} X#2#{} Mult",
                "if Blind is defeated with",
                "{C:attention}0{} hands and {C:attention}0{} discards remaining",
                "{C:inactive}(Currently {X:mult,C:white} X#1#{C:inactive} Mult)"
            }
        },
        4, 
        5, 
        true, 
        true, 
        true, 
        true 
    )
    
    bigfoot.atlas = "j_bigfoot_sheet_1"
    bigfoot:register()
    
    function SMODS.Jokers.j_bigfoot.loc_def(card)
        return { card.ability.extra.Xmult, card.ability.extra.Xmult_mod }
    end
    
    SMODS.Jokers.j_bigfoot.calculate = function(self, context)
        -- Apply XMult
        if SMODS.end_calculate_context(context) then
            if self.ability.extra.Xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end
        
        -- Calculate Scaling at end of round
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            local hands_left = G.GAME.current_round.hands_left
            local discards_left = G.GAME.current_round.discards_left
            
            -- Check if exactly 0 hands and 0 discards remain
            if hands_left == 0 and discards_left == 0 then
                self.ability.extra.Xmult = self.ability.extra.Xmult + self.ability.extra.Xmult_mod
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT,
                    card = self
                }
            end
        end
    end
    
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        
        if self.ability.name == "Royalty" and self.added_to_deck then
            -- Use real-world time for consistent 60fps
            local current_real_time = love.timer.getTime()
            
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
    
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
    
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                
                self.ability.extra.current_frame = self.ability.extra.current_frame + 1
                
                if self.ability.extra.current_frame > self.ability.extra.max_frames then
                    self.ability.extra.current_frame = 1
                end
                
                -- SPRITE SHEET LOGIC
                local frame_num = self.ability.extra.current_frame
                local frames_per_sheet = 50
                local sheet_idx = math.ceil(frame_num / frames_per_sheet)
                local frame_in_sheet = ((frame_num - 1) % frames_per_sheet)
                
                local sheet_atlas_key = "j_bigfoot_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end
-- Calculate Chips

if config.sloppysolesjoker then
    local frames_sloppy_soles_count = 511
    
    -- Helper to register sprite sheets
    local function register_sloppy_soles_sheets(total_frames)
        local frames_per_sheet = 50
        local sheets_needed = math.ceil(total_frames / frames_per_sheet)
        for sheet_idx = 1, sheets_needed do
            local frames_in_this_sheet = math.min(frames_per_sheet, total_frames - (sheet_idx - 1) * frames_per_sheet)
            SMODS.Atlas({
                key = "j_sloppy_soles_sheet_" .. sheet_idx,
                path = "animations/j_sloppy_soles_sheet_" .. sheet_idx .. ".png",
                px = 142,
                py = 190,
                atlas_table = 'ASSET_ATLAS',
                frames = frames_in_this_sheet
            }):register()
        end
    end
    
    -- Register sheets
    register_sloppy_soles_sheets(frames_sloppy_soles_count)
    
    local sloppy_soles = SMODS.Joker:new(
        "Sloppy Soles", 
        "j_sloppy_soles", 
        { 
            extra = { 
                h_acc = 0,
                x_mult_gain = 1,
                -- Animation Variables
                cost = 20,
                current_frame = 1,
                max_frames = frames_sloppy_soles_count,
                frame_timer = 0,
                frame_delay = 0.016,
                added_this_blind = 0 -- Track how many were eased in this round
            } 
        }, 
        { x = 0, y = 0 },
        { 
            name = "Sloppy Soles",
            text = {
                "{X:mult,C:white} X1 {} Mult for each",
                "unplayed {C:blue}Hand{} from previous round.",
                "{C:red}Discarding{} resets to {C:attention}0{}.",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult, {C:blue}#2#{C:inactive} Hands)"
            }
        },
        4, -- Rarity (Legendary)
        20, 
        true, 
        true, 
        false, 
        true 
    )
    
    sloppy_soles.atlas = "j_sloppy_soles_sheet_1"
    sloppy_soles:register()
    
    function SMODS.Jokers.j_sloppy_soles.loc_def(card)
        local current_xmult = 1 + (card.ability.extra.h_acc * card.ability.extra.x_mult_gain)
        return { current_xmult, card.ability.extra.h_acc }
    end
    
    SMODS.Jokers.j_sloppy_soles.calculate = function(self, context)
        -- 1. SCORING HOOK
        if SMODS.end_calculate_context(context) then
            local current_xmult = 1 + (self.ability.extra.h_acc * self.ability.extra.x_mult_gain)
            if current_xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={current_xmult}},
                    Xmult_mod = current_xmult,
                    card = self
                }
            end
        end
        
        -- 2. START OF BLIND HOOK: Add hands and track the addition
        if context.setting_blind and not context.blueprint then
            self.ability.extra.added_this_blind = 0 -- Reset round tracker
            if self.ability.extra.h_acc > 0 then
                local to_add = self.ability.extra.h_acc
                self.ability.extra.added_this_blind = to_add -- Store for potential discard reset
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        ease_hands_played(to_add) --
                        play_sound('timpani')
                        card_eval_status_text(self, "extra", nil, nil, nil, {
                            message = "+" .. to_add .. " Hands!",
                            colour = G.C.BLUE
                        })
                        return true
                    end
                }))
            end
        end
        
        -- 3. DISCARD RESET: Remove added hands from the current round pool
        if context.pre_discard and not context.blueprint then
            if self.ability.extra.h_acc > 0 then
                local removal_amt = self.ability.extra.added_this_blind
                self.ability.extra.h_acc = 0
                self.ability.extra.added_this_blind = 0
                
                -- Dynamically remove the hands from the player's current UI count
                if removal_amt > 0 then 
                    ease_hands_played(-removal_amt) 
                end

                return {
                    message = "Tripped!",
                    colour = G.C.RED,
                    card = self
                }
            end
        end
        
        -- 4. END OF BLIND HOOK: THE FIX (Linear Scaling)
        if context.end_of_round and not context.blueprint and not context.individual and not context.repetition then
            local remaining_hands = G.GAME.current_round.hands_left 
            
            -- Set h_acc to remaining_hands, instead of adding them together
            self.ability.extra.h_acc = remaining_hands 
            
            if remaining_hands > 0 then
                G.GAME.current_round.hands_left = 0
                return {
                    message = "Hoarded!",
                    colour = G.C.BLUE,
                    card = self
                }
            end
        end
    end

    -- Animation logic
    local original_card_update = Card.update
    function Card:update(dt)
        original_card_update(self, dt)
        if self.ability.name == "Sloppy Soles" and self.added_to_deck then
            local current_real_time = love.timer.getTime()
            if not self.ability.extra.last_real_time then
                self.ability.extra.last_real_time = current_real_time
            end
            local real_dt = current_real_time - self.ability.extra.last_real_time
            self.ability.extra.last_real_time = current_real_time
            self.ability.extra.frame_timer = self.ability.extra.frame_timer + real_dt
            
            if self.ability.extra.frame_timer >= self.ability.extra.frame_delay then
                self.ability.extra.frame_timer = self.ability.extra.frame_timer - self.ability.extra.frame_delay
                self.ability.extra.current_frame = (self.ability.extra.current_frame % self.ability.extra.max_frames) + 1
                
                local sheet_idx = math.ceil(self.ability.extra.current_frame / 50)
                local frame_in_sheet = ((self.ability.extra.current_frame - 1) % 50)
                local sheet_atlas_key = "j_sloppy_soles_sheet_" .. sheet_idx
                
                if self.children.center and G.ASSET_ATLAS[sheet_atlas_key] then
                    self.children.center.atlas = G.ASSET_ATLAS[sheet_atlas_key]
                    self.children.center:set_sprite_pos({
                        x = frame_in_sheet % 10, 
                        y = math.floor(frame_in_sheet / 10)
                    })
                end
            end
        end
    end
end
-- Calculate Chips
local evaluate_playref = G.FUNCS.evaluate_play
function G.FUNCS.evaluate_play(self, e)
    evaluate_playref(self, e) -- This runs vanilla logic ONCE (Ice Cream -5)

    for i = 1, #G.jokers.cards do
        local effects = eval_card(G.jokers.cards[i], {
            card = G.consumeables,
            -- CHANGE THIS LINE:
            -- after = true, 
            
            -- TO THIS:
            feet_custom_after = true, -- Custom flag; Vanilla Ice Cream won't see this
            
            mmc_scored_chips = hand_chips * mult
        })
        if effects.jokers then
            card_eval_status_text(G.jokers.cards[i], "jokers", nil, 0.3, nil, effects.jokers)
        end
    end
end

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    loc_colour_ref(_c, _default)
    G.ARGS.LOC_COLOURS["mikas"] = HEX("FD5DA8")
    return G.ARGS.LOC_COLOURS[_c] or _default or G.C.UI.TEXT_DARK
end

----------------------------------------------
------------ SPEED & FF LOGIC ----------------

-- 1. Initialize Global Settings if they don't exist
if G.SETTINGS.FASTFORWARD == nil then G.SETTINGS.FASTFORWARD = 0 end
if G.SETTINGS.STATUSTEXT == nil then G.SETTINGS.STATUSTEXT = 0 end

-- 2. Define the Speed Options UI (Replacing the vanilla Game Speed bar)
function G.UIDEF.lostedspeed_options()
    return create_option_cycle({
        label = localize('b_set_gamespeed'),
        scale = 0.8,
        options = {0.25, 0.5, 1, 2, 3, 4, 8, 16, 32, 64, 128},
        opt_callback = 'change_gamespeed',
        current_option = (
            G.SETTINGS.GAMESPEED == 0.25 and 1 or
            G.SETTINGS.GAMESPEED == 0.5 and 2 or
            G.SETTINGS.GAMESPEED == 1 and 3 or
            G.SETTINGS.GAMESPEED == 2 and 4 or
            G.SETTINGS.GAMESPEED == 3 and 5 or
            G.SETTINGS.GAMESPEED == 4 and 6 or
            G.SETTINGS.GAMESPEED == 8 and 7 or
            G.SETTINGS.GAMESPEED == 16 and 8 or
            G.SETTINGS.GAMESPEED == 32 and 9 or
            G.SETTINGS.GAMESPEED == 64 and 10 or
            G.SETTINGS.GAMESPEED == 128 and 11 or 3
        )
    })
end

-- 3. Hook into the Settings Menu to inject the new bars
local original_settings_tab = G.UIDEF.settings_tab
function G.UIDEF.settings_tab(tab)
    local setting_tab = original_settings_tab(tab)
    if tab == 'Game' then
        for i, node_config in ipairs(setting_tab.nodes) do
            -- Find the original gamespeed node and replace it with our expanded suite
            if node_config.nodes and node_config.nodes[1] and node_config.nodes[1].config.opt_callback == 'change_gamespeed' then
                setting_tab.nodes[i] = {
                    n = G.UIT.C,
                    config = { align = 'cm' },
                    nodes = {
                        G.UIDEF.lostedspeed_options(),
                        -- We include the FF and Status toggles from speed_options.lua here
                        G.UIDEF.lostedspeed_fastforward_options(),
                        G.UIDEF.lostedspeed_statustext_options()
                    }
                }
                break
            end
        end
    end
    return setting_tab
end

----------------------------------------------
------------ THE SPEED FIX -------------------

-- 1. We override the UI definition globally so Balatro finds it
local original_settings_tab = G.UIDEF.settings_tab
function G.UIDEF.settings_tab(tab)
    local setting_tab = original_settings_tab(tab)
    
    if tab == 'Game' then
        -- We search for the standard 'change_gamespeed' bar to replace it
        for i, node_config in ipairs(setting_tab.nodes) do
            if node_config.nodes and node_config.nodes[1] and node_config.nodes[1].config.opt_callback == 'change_gamespeed' then
                setting_tab.nodes[i] = {
                    n = G.UIT.C,
                    config = { align = 'cm' },
                    nodes = {
                        -- Injecting the three bars from speed_options.lua
                        G.UIDEF.lostedspeed_options(),
                        G.UIDEF.lostedspeed_fastforward_options(),
                        G.UIDEF.lostedspeed_statustext_options()
                    }
                }
                break
            end
        end
    end
    return setting_tab
end

-- 2. Define the callback logic for the new buttons
G.FUNCS.change_fastforward = function(args)
    G.SETTINGS.FASTFORWARD = (
        args.to_val == "Planets" and 1 or
        args.to_val == "On" and 2 or
        args.to_val == "Unsafe" and 3 or 0
    )
end

G.FUNCS.change_statustext = function(args)
    G.SETTINGS.STATUSTEXT = (
        args.to_val == "Less Annoying" and 1 or
        args.to_val == "No Misc" and 2 or
        args.to_val == "None" and 3 or 0
    )
end

-- 3. The actual Option Cycle definitions
function G.UIDEF.lostedspeed_fastforward_options()
    if not G.SETTINGS.FASTFORWARD then G.SETTINGS.FASTFORWARD = 0 end
    return create_option_cycle({
        label = "Fast Forward",
        w = 5, scale = 0.8,
        options = {"Off", "Planets", "On", "Unsafe"},
        opt_callback = 'change_fastforward',
        current_option = G.SETTINGS.FASTFORWARD + 1
    })
end

function G.UIDEF.lostedspeed_statustext_options()
    if not G.SETTINGS.STATUSTEXT then G.SETTINGS.STATUSTEXT = 0 end
    return create_option_cycle({
        label = "Status Text",
        w = 5, scale = 0.8,
        options = {"All", "Less Annoying", "No Misc", "None"},
        opt_callback = 'change_statustext',
        current_option = G.SETTINGS.STATUSTEXT + 1
    })
end

-- 4. Expanded Speed Slider
function G.UIDEF.lostedspeed_options()
    return create_option_cycle({
        label = localize('b_set_gamespeed'),
        scale = 0.8,
        options = {0.25, 0.5, 1, 2, 3, 4, 8, 16, 32, 64, 128},
        opt_callback = 'change_gamespeed',
        current_option = (
            G.SETTINGS.GAMESPEED == 0.25 and 1 or G.SETTINGS.GAMESPEED == 0.5 and 2 or
            G.SETTINGS.GAMESPEED == 1 and 3 or G.SETTINGS.GAMESPEED == 2 and 4 or
            G.SETTINGS.GAMESPEED == 3 and 5 or G.SETTINGS.GAMESPEED == 4 and 6 or
            G.SETTINGS.GAMESPEED == 8 and 7 or G.SETTINGS.GAMESPEED == 16 and 8 or
            G.SETTINGS.GAMESPEED == 32 and 9 or G.SETTINGS.GAMESPEED == 64 and 10 or
            G.SETTINGS.GAMESPEED == 128 and 11 or 3
        )
    })
end

----------------------------------------------
-- CLEAR TOP COAT: LOGIC & UI OVERRIDES
----------------------------------------------

-- Helper function to simulate pack opening without ruining RNG
local function get_pack_preview(card)
    local contents = {}
    
    -- 1. SAVE THE RNG STATE
    -- We deep copy the current pseudorandom state so we can restore it after peeking.
    local rng_cache = copy_table(G.GAME.pseudorandom)
    
    -- 2. SIMULATE GENERATION
    -- We derive the logic from standard Card:open()
    if card.ability.set == 'Booster' then
        local _planet, _hand, _tarot = 0, 0, 0
        
        -- Determine the seed exactly as the game would
        G.GAME.pseudorandom.seed = card.pseudoseed or (G.GAME.pseudorandom.seed .. '_preview')
        
        -- Logic adapted from Card:open() for standard packs
        for i = 1, card.ability.extra do
            local _type, _info = nil, nil
            
            if card.ability.name:find('Arcana') then
                _type = 'Tarot'
                _info = get_current_pool('Tarot', _tarot, 'tarot_pack')
                _tarot = _tarot + 1
            elseif card.ability.name:find('Celestial') then
                _type = 'Planet'
                _info = get_current_pool('Planet', _hand, 'planet_pack')
                _hand = _hand + 1
            elseif card.ability.name:find('Spectral') then
                _type = 'Spectral'
                _info = get_current_pool('Spectral', _hand, 'spectral_pack')
            elseif card.ability.name:find('Standard') then
                _type = 'Base'
                -- Standard packs are complex, simplifying for preview to just show Backs or generic info
                -- To do this perfectly requires creating cards which is heavy.
                -- For now, we will signify Standard cards with a generic sprite or attempt a simple fetch
                _info = get_current_pool('Standard_Pack', i, 'standard_pack')[1] 
            elseif card.ability.name:find('Buffoon') then
                _type = 'Joker'
                _info = get_current_pool('Joker', i, 'buffoon_pack')
            end

            if _info then
                table.insert(contents, {type = _type, key = _info})
            end
        end
    end

    -- 3. RESTORE THE RNG STATE
    G.GAME.pseudorandom = rng_cache
    
    return contents
end
----------------------------------------------
------------ FINAL CENTERED BACKGROUND -------
----



----------------------------------------------
-- BORROWED HEELS LOGIC OVERRIDES
----------------------------------------------


-- 2. IMMUNITY LOGIC: Block Editions & Ectoplasm
local original_set_edition = Card.set_edition
function Card:set_edition(edition, immediate, silent)
    -- Block ALL editions from being applied to Borrowed Heels
    -- This includes Negative, Polychrome, Foil, Holo
    if self.ability and self.ability.name == "Borrowed Heels" then
        -- Allow setting the specific "immune" tag (see below) or clearing editions (nil)
        -- But reject any standard game editions
        if edition and (edition.negative or edition.polychrome or edition.holo or edition.foil) then
            return -- Silently reject
        end
    end
    return original_set_edition(self, edition, immediate, silent)
end


----------------------------------------------
-- CLEAR TOP COAT: UI LOGIC
----------------------------------------------
---------------------------------------------------------
-- THE PERFECT FIT: UI COMPATIBILITY BADGE (FINAL VER) --
---------------------------------------------------------

-- 1. Centralized Logic for Status and Color
local function get_fit_status(card, is_left)
    if not G.jokers or not G.jokers.cards then return localize('k_none'), G.C.JOKER_GREY end
    
    local my_pos = nil
    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then my_pos = i; break end
    end
    
    if not my_pos then return localize('k_none'), G.C.JOKER_GREY end

    -- Strictly define the neighbor
    local neighbor = nil
    if is_left and my_pos > 1 then 
        neighbor = G.jokers.cards[my_pos - 1] 
    elseif not is_left and my_pos < #G.jokers.cards then 
        neighbor = G.jokers.cards[my_pos + 1] 
    end

    local prefix = is_left and "L: " or "R: "
    
    -- If there is no card there, it is always NONE
    if not neighbor then 
        return prefix .. localize('k_none'), G.C.JOKER_GREY 
    end

    -- Compatibility Logic
    -- Blueprint and Brainstorm are compatible UNLESS they are trying to copy Perfect Fit itself
    if neighbor.config.center.blueprint_compat then
        return prefix .. localize('k_compatible'), mix_colours(G.C.GREEN, G.C.JOKER_GREY, 0.8)
    else
        return prefix .. localize('k_incompatible'), mix_colours(G.C.RED, G.C.JOKER_GREY, 0.8)
    end
end

-- 2. UI Updaters
G.FUNCS.perfect_fit_compat_L = function(e)
    local card = e.config.ref_table
    if card.area and card.area == G.jokers then
        local txt, col = get_fit_status(card, true)
        card.ability.perfect_fit_ui_l = txt
        e.config.colour = col
    end
end

G.FUNCS.perfect_fit_compat_R = function(e)
    local card = e.config.ref_table
    if card.area and card.area == G.jokers then
        local txt, col = get_fit_status(card, false)
        card.ability.perfect_fit_ui_r = txt
        e.config.colour = col
    end
end

-- 3. The Injection Hook
local original_generate_card_ui = generate_card_ui
function generate_card_ui(_c, full_UI_table, specific_vars, card_type, badges, hide_desc, main_start, main_end, card)
    
    if (_c.key == 'j_perfect_fit' or _c.name == 'The Perfect Fit') and card and card.area == G.jokers then
        
        -- Initialize values for the first frame
        local l_txt, l_col = get_fit_status(card, true)
        local r_txt, r_col = get_fit_status(card, false)
        card.ability.perfect_fit_ui_l = l_txt
        card.ability.perfect_fit_ui_r = r_txt
        
        local compat_badges = {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
            -- LEFT BADGE
            {n=G.UIT.C, config={ref_table = card, align = "m", colour = l_col, r = 0.05, padding = 0.06, func = 'perfect_fit_compat_L'}, nodes={
                {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'perfect_fit_ui_l', colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
            }},
            -- Tiny Spacer
            {n=G.UIT.C, config={align="m", minw=0.05}},
            -- RIGHT BADGE
            {n=G.UIT.C, config={ref_table = card, align = "m", colour = r_col, r = 0.05, padding = 0.06, func = 'perfect_fit_compat_R'}, nodes={
                {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'perfect_fit_ui_r', colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
            }}
        }}
        
        main_end = main_end or {}
        table.insert(main_end, compat_badges)
    end
    
    return original_generate_card_ui(_c, full_UI_table, specific_vars, card_type, badges, hide_desc, main_start, main_end, card)
end
------------MOD CODE END----------------------
