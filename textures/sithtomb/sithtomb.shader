textures/sithtomb/blackmarble
{
q3map_nolightmap
{
map textures/sithtomb/blackmarble
blendFunc GL_ONE GL_ZERO
rgbGen lightingDiffuse
}
{
map textures/sithtomb/skyenv3
blendFunc GL_SRC_ALPHA GL_ONE
detail
alphaGen lightingSpecular
}
{
map textures/sithtomb/glossyenv
blendFunc GL_DST_COLOR GL_SRC_COLOR
detail
tcGen environment
}
}

textures/sithtomb/glassbrightred
{
     qer_editorimage   textures/sithtomb/glassbrightred
     q3map_tesssize   48
     qer_trans   0.5
     surfaceparm nonopaque
     surfaceparm forcefield
     surfaceparm trans
     q3map_material   Glass
     q3map_nolightmap
    {
        map textures/sithtomb/glassbrightred
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
        map textures/sithtomb/glassbrightred
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/sithtomb/water
{
	qer_editorimage	textures/sithtomb/water
	q3map_lightmapMergable
	q3map_tessSize 32
	q3map_noFog
	qer_trans	0.8
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	deformvertexes normal 0.1 0.25
	deformvertexes wave 80 sin 0 1 0.3 0.5
	{
		map textures/sithtomb/water
		blendFunc GL_ONE GL_SRC_ALPHA
		rgbGen const ( 0.1 0.9 1.0 )
		alphaFunc GE128
		alphaGen const 1.0
	}
	{
		map textures/sithtomb/glossyenv
		tcGen environment
		rgbGen const ( 0.4 0.3 0.35 )
		blendFunc GL_ONE GL_ONE
	}
	{
		map textures/sithtomb/glossyenv
		tcGen environment
		blendFunc GL_DST_COLOR GL_ZERO
	}
	{
		map textures/sithtomb/skyenv2
		tcGen environment
		blendFunc GL_ONE GL_ONE
		rgbGen identity
		glow
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
	}
}