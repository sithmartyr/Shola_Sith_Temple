models/map_objects/shola_temple/statue_silv
{   
 
        {
                map models/map_objects/shola_temple/reflect_silv.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map models/map_objects/shola_temple/statue_silv.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	} 
        {
		map $lightmap
                blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/skies/sholasky
{
	qer_editorimage	textures/skies/sholasky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_skylight 1750 5
	q3map_sunExt 1.000000 0.997119 0.857641 500 315 25 1 2
	skyParms	textures/skies/moost 512 -
}

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

textures/Shola_Temple/video
{
        qer_editorImage textures/Shola_Temple/video
        surfaceparm nolightmap
        
        q3map_nolightmap
        {
                videoMap video/ja11.roq
                rgbGen identityLighting
        }
}

textures/Shola_Temple/video2
{
        qer_editorImage textures/Shola_Temple/video2
        surfaceparm nolightmap
        
        q3map_nolightmap
        {
                videoMap video/ja08.roq
                rgbGen identityLighting
        }
}

textures/skies/watercourse
{
        qer_editorimage textures/skies/watercourse
        surfaceparm sky
        surfaceparm noimpact
        surfaceparm nomarks
        notc
        q3map_nolightmap
        skyParms textures/skies/man 512 -
}

textures/Shola_Temple/SithArchive
{
   q3map_surfacelight	500

	polygonOffset
	q3map_nolightmap
    {
        map textures/Shola_Temple/SithArchive
    }
    {
        map textures/Shola_Temple/SithArchiveGlow
        blendFunc GL_ONE GL_ONE
    }
}

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

textures/Room_Labels/archives
{
   q3map_surfacelight	500

	polygonOffset
	q3map_nolightmap
    {
        map textures/Room_Labels/archives
    }
    {
        map textures/Room_Labels/archives_glow
        blendFunc GL_ONE GL_ONE
    }
}

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

textures/bespin/u_shaft_glow02
{
	qer_editorimage	textures/bespin/u_shaft_glow02
	q3map_nolightmap
    {
        map textures/bespin/u_shaft_glow02
        rgbGen vertex
    }
    {
        map textures/Shola_Temple/blackwallgloss
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
}

textures/colors/black
{
	qer_editorimage	textures/bespin/u_shaft_glow02
	q3map_nolightmap
    {
        map textures/bespin/u_shaft_glow02
        rgbGen vertex
    }
    {
        map textures/Shola_Temple/blackwallgloss
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
}

textures/Shola_temple/trisoup_rock
{
   q3map_nonplanar
    q3map_shadeangle 120
   q3map_material Rock
    qer_editorimage textures/faru/grass25
    surfaceparm    nodamage
    {
       map textures/faru/grass25
    }
   {

      map textures/common/lrock2
            blendFunc GL_DST_COLOR GL_SRC_COLOR
            detail
            tcMod scale 0.075 0.075
   }
   {
      map $lightmap
      blendFunc GL_DST_COLOR GL_ZERO
   }
}