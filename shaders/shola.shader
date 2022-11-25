models/map_objects/shola_temple/statue_silv
{   
    cull disable
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


//SKIES


textures/skies/sholasky
{
	qer_editorimage	textures/skies/sky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_skylight 150 3
	q3map_sunExt 1.0 1.0 1.0 100 50 35 1 2
	skyParms	textures/skies/moost 512 -
}

textures/skies/sholaspace
{
	qer_editorimage	textures/skies/sky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	skyParms	textures/skies/shola 512 -
}

textures/skies/lightbluespace
{
	qer_editorimage	textures/skies/sky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	skyParms	textures/skies/lightspace 512 -
}

textures/skies/NewSholaSpace
{
	qer_editorimage	textures/skies/sky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	skyParms	textures/skies/redneb 512 -
}

textures/skies/wastelands
{
	qer_editorimage	textures/skies/sky
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	skyParms	textures/skies/sjctat 1024 -
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



//CORE 


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


textures/Shola_Temple/sholablack
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map textures/Shola_Temple/sholablack
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

models/map_objects/shola_temple/medpac_mp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/shola_temple/medpac_mp.jpg
        blendFunc GL_ONE GL_ZERO
        //rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/health
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/health_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

models/map_objects/shola_temple/shield_sm_mp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/shola_temple/shield_sm_mp
        blendFunc GL_ONE GL_ZERO
        //rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/shield_field
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave triangle 0.6 1 0 1
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/shield_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}



//HOLOGRAMMODELS



models/map_objects/shola_temple/dfktor
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/dfktor.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/extras
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/extras.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/face
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/face.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/head
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/head.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/jacket
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/jacket.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/legs
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/legs.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/mouth_eyes
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/mouth_eyes.png
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen wave sin 0.7 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
}

models/map_objects/shola_temple/holo/martyr/dfktor
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/dfktor
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/extras
{
    surfaceparm	metalsteps
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/extras
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/face
{
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/face
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        alphaGen const 0.8
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/head
{
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/head
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/jacket
{
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/jacket
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/legs
{
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/legs
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}

models/map_objects/shola_temple/holo/martyr/mouth_eyes
{
    q3map_nolightmap
    {
        map models/map_objects/shola_temple/holo/martyr/mouth_eyes
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.9
    }
    {
        map models/map_objects/shola_temple/holo/blue_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.9 0.1 0.1 0.1
    }
    {
        map models/map_objects/shola_temple/holo/grain
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
        alphaGen const 0.5
    }
}




//NEWEXTRAS



textures/sholawater/acidpit
{
	qer_editorimage	textures/sholawater/acidpit
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	lava
	q3map_nolightmap
	q3map_onlyvertexlighting
	q3map_novertexshadows
    
    {
        map textures/sholawater/acidpit
	glow
        rgbGen wave sin 0.8 0.1 0 0.3
        alphaGen const 0      
	tcMod scroll 0 -0.25
    }
}

textures/Shola_Temple/cantina
{
	surfaceparm	nonsolid
	polygonOffset
    {
        map textures/Shola_Temple/cantina
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
        rgbGen identity
    }
}

textures/Shola_Temple/sith
{
    {
        map textures/Shola_Temple/sith
        rgbGen lightingDiffuse
    }
    {
        map textures/Shola_Temple/sith_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}
textures/Shola_Temple/sith_distressed
{
    {
        map textures/Shola_Temple/sith_distressed
        rgbGen lightingDiffuse
    }
    {
        map textures/Shola_Temple/sith_distressed_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/Shola_Temple/floor_glow
{
    {
        map textures/Shola_Temple/floor_glow
        rgbGen lightingDiffuse
    }
    {
        map textures/Shola_Temple/blackwallgloss
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
    {
        map textures/Shola_Temple/floor_glow_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}




//KOTORMODELS




models/map_objects/kotor/kolto
{
	qer_editorimage	models/map_objects/kotor/kolto.tga
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	Glass
	q3map_nolightmap
    {
        map models/map_objects/kotor/kolto
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
        map models/map_objects/kotor/kolto
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/map_objects/kotor/bubbles
        blendFunc blend
        tcMod scroll 0 0.2
    }
}

models/map_objects/kotor/koltotank
{
	qer_editorimage models/map_objects/kotor/koltotank.jpg
	q3map_lightimage models/map_objects/kotor/koltotank_glow.jpg
	q3map_shadeangle	90
	q3map_surfacelight 500
	q3map_backSplash 0.5 8
	q3map_nonplanar
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/koltotank
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/koltotank_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/kotor/koltotank_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/kotor/sithholocron
{
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/sithholocron
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/sithholocron_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/kotor/datapad
{
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/datapad
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/datapad_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/kotor/cage
{
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/cage
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/cage_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/kotor/orangewrktable
{
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/orangewrktable
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/orangewrktable_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/kotor/bluewrktable
{
    {
        map $lightmap
    }
    {
        map models/map_objects/kotor/bluewrktable
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kotor/bluewrktable_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}
