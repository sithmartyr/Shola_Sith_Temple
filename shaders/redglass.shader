
textures/shola_temple/glassdarkred
{
     qer_editorimage   textures/shola_temple/glassdarkred
     q3map_tesssize   48
     qer_trans   0.5
     surfaceparm nonopaque
     surfaceparm forcefield
     surfaceparm trans
     q3map_material   Glass
     q3map_nolightmap
    {
        map textures/shola_temple/glassdarkred
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
        map textures/shola_temple/glassmediumred
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}