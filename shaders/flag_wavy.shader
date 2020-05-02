textures/Shola_Temple/flag
{
// deformvertexes	autoSprite2

	qer_editorimage	textures/Shola_Temple/flag
	q3map_tesssize	16
	cull	twosided
	deformvertexes	wave	50 sin 0 1 0.5 0.25
    {
        map textures/Shola_Temple/flag
        alphaFunc GE128
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/Shola_Temple/de_flag
{
// deformvertexes	autoSprite2

	qer_editorimage	textures/Shola_Temple/de_flag
	q3map_tesssize	16
	cull	twosided
	deformvertexes	wave	50 sin 0 1 0.5 0.25
    {
        map textures/Shola_Temple/de_flag
        alphaFunc GE128
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}