textures/shola_temple/red_light
{
	qer_editorimage	textures/shola_temple/red_light
    {
        map $lightmap
        rgbGen identity
        tcGen lightmap
    }
    {
        map textures/shola_temple/red_light
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/shola_temple/red_light_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}