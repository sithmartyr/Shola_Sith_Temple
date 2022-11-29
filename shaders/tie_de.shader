models/players/tie_de/tie_fighter_body
{
    {
        map models/players/tie_de/tie_fighter_body
        rgbGen lightingDiffuse
    }
    {
        map models/players/tie_de/tie_fighter_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/players/tie_de/tie_fighter_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/players/tie_de/tie_fighter_wing
{
    {
        map models/players/tie_de/tie_fighter_wing
        rgbGen lightingDiffuse
    }
    {
        map models/players/tie_de/tie_fighter_wing_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}