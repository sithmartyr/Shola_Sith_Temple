textures/sholawater/movingwater
{
	qer_editorimage	textures/common/direction
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	Water
    {
        map textures/sholawater/water
        blendFunc GL_ONE GL_SRC_ALPHA
        rgbGen const ( 0.752941 0.752941 0.752941 )
        alphaGen const 0.2
        tcMod scroll 0 -1
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/sholawater/stars
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 -1
    }
}