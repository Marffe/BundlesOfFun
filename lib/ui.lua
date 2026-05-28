local function bundle_toggle(item, colour)
    return { n = G.UIT.R, config = { align = "cm" }, nodes = {
        create_toggle{
            label = localize("option_bof_"..item),
            active_colour = colour,
            col = true,
            label_scale = 0.4,
            ref_table = BundlesOfFun.config.bundles,
            ref_value = item,
            align = "cm"
        }
    }}
end

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = {
            emboss = 0.05,
            minh = 6,
            r = 0.1,
            minw = 10,
            align = "cm",
            padding = 0.3,
            colour = G.C.BLACK,
        },
        nodes = {
            { n = G.UIT.R, config = { align = "cm" }, nodes = {
                { n = G.UIT.T, config = { text = "WARNING", scale = 1, colour = SMODS.Gradients.warning_text, shadow = true, emboss = 0.05 } }
            }},
            { n = G.UIT.R, config = { align = "cm" }, nodes = {
                { n = G.UIT.T, config = { text = "Continuing a run after disabling a set may crash the game!", scale = 0.4, colour = G.C.RED, shadow = true } }
            }},
            { n = G.UIT.R, config = { align = "cm", padding = 0.2 }, nodes = {
                { n = G.UIT.C, config = { align = "cm", minw = 5 }, nodes = {
                    bundle_toggle("appetizers", G.C.bof_appetizers),
                    bundle_toggle("jesters", G.C.bof_jesters),
                    bundle_toggle("normalities", G.C.bof_normalities),
                }},
                { n = G.UIT.C, config = { align = "cm", minw = 5 }, nodes = {
                    bundle_toggle("fables", G.C.bof_fables),
                    bundle_toggle("flats", G.C.bof_flats),
                    -- bundle_toggle("coupons", G.C.bof_coupons),
                    bundle_toggle("fish", G.C.SET.Fish),
                    -- bundle_toggle("enemies", G.C.bof_enemies),
                    -- bundle_toggle("finishers", G.C.bof_finishers),
                }}
            }},
            { n = G.UIT.R, config = { align = "cm" }, nodes = {
                { n = G.UIT.T, config = { text = "Changes require a restart", scale = 0.5, colour = G.C.WHITE, shadow = true } }
            }},
            { n = G.UIT.R, config = { align = "cm", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = "(Some items only appear if multiple sets are enabled)", scale = 0.3, colour = G.C.WHITE, shadow = true } }
            }},
        }
    }
end

local function bof_credit_title(name, role, colour)
    return { n = G.UIT.R, config = { align = "cm", padding = 0.1 }, nodes = {
        { n = G.UIT.T, config = { text = name .. " - " .. role, scale = 0.5, colour = colour, shadow = true } }
    }}
end

local function bof_credit_description(description)
    return { n = G.UIT.R, config = { align = "cm", padding = 0.05 }, nodes = {
        { n = G.UIT.T, config = { text = description, scale = 0.35, colour = G.C.WHITE, shadow = true } }
    }}
end

SMODS.current_mod.extra_tabs = function()
    return {
        {
            label = "Credits",
            tab_definition_function = function()
                return {
                    n = G.UIT.ROOT,
                    config = {
                        emboss = 0.05,
                        minh = 6,
                        r = 0.1,
                        minw = 10,
                        align = "cm",
                        padding = 0.3,
                        colour = G.C.BLACK,
                    },
                    nodes = {
                        { n = G.UIT.R, config = { align = "cm", padding = 0.3 }, nodes = {
                            { n = G.UIT.T, config = { text = "Bundles Of Fun", scale = 1.2, colour = G.C.GOLD, shadow = true, emboss = 0.05 } }
                        }},
                        { n = G.UIT.R, config = { align = "cm", padding = 0.2 }, nodes = {
                            { n = G.UIT.C, config = { align = "cm", minw = 5 }, nodes = {
                                { n = G.UIT.R, config = { align = "cm", padding = 0.2 }, nodes = {
                                    { n = G.UIT.T, config = { text = "Creators", scale = 0.45, colour = G.C.WHITE, shadow = true } }
                                }},
                                bof_credit_title("George The Rat", "Creator", G.C.GREEN),
                                bof_credit_description("All art, most ideas, and very minimal code"),
                                bof_credit_title("Glitchkat10", "Co-Creator", G.C.PLASMA),
                                bof_credit_description("Many ideas, nearly all code"),
                            }},
                            { n = G.UIT.C, config = { align = "cm", minw = 5 }, nodes = {
                                { n = G.UIT.R, config = { align = "cm", padding = 0.2 }, nodes = {
                                    { n = G.UIT.T, config = { text = "Contributors", scale = 0.45, colour = G.C.WHITE, shadow = true } }
                                }},
                                bof_credit_title("wingedcatgirl", "Coder", G.C.SO_1.Hearts),
                                bof_credit_description("Technical code and UI"),
                                bof_credit_title("CodeRevo", "Coder", G.C.STAKES[6]),
                                bof_credit_description("Some Jokers' code"),
                                bof_credit_title("Marffe", "Coder & Localizer", G.C.ORANGE),
                                bof_credit_description("Fixed bugs and translated to Spanish"),
                            }}
                        }}
                    }
                }
            end
        }
    }
end


