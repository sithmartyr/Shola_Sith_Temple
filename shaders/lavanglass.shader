textures/shola_temple/pulse
{
 q3map_nolightmap
 q3map_onlyvertexlighting
    {
        map textures/shola_temple/pulse
        rgbGen lightingDiffuse
    }
    {
        map textures/shola_temple/pulse_1
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map textures/shola_temple/pulse_2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

textures/shola_temple/lavatex1
{
	qer_editorimage	textures/shola_temple/lavatex1
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	lava
	q3map_nolightmap
	q3map_onlyvertexlighting
	q3map_novertexshadows
    
    {
        map textures/shola_temple/lavatex1
	glow
        rgbGen wave sin 0.8 0.1 0 0.3
        alphaGen const 0      
	tcMod scroll 0 -0.25
    }
    {
        map textures/shola_temple/lavatex2
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 0.05 0.05
        tcMod turb 1 0.3 1 0.1
	
    }
}