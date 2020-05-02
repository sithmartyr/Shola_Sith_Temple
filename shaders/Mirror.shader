textures/Shola_Temple/mirrorfloor
{
	qer_editorimage	textures/Shola_Temple/DE_Mirror
	surfaceparm	forcefield
	portal
	q3map_nolightmap
    {
        map textures/Shola_Temple/DE_Mirror2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        depthWrite
    }
    {
        map textures/Shola_Temple/mirfloor
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
    {
        map textures/Shola_Temple/mirfloor_env
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.200000 0.200000 0.200000 )
        tcGen environment
    }
}
