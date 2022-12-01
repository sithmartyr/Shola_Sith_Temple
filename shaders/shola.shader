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

textures/Shola_Temple/foodlist
{
	qer_editorimage textures/Shola_Temple/foodlist
	q3map_nolightmap
	cull	twosided
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_surfacelight 3000
	q3map_lightRGB 1.00 1.00 1.00
	{
	map textures/Shola_Temple/foodlist
	blendFunc GL_ONE GL_ONE
	tcMod scroll 0.00 0.03
	glow
	}
}

textures/sholawallart/ApocEmpireSymbol
{
	surfaceparm	nonsolid
	polygonOffset
    {
        map textures/sholawallart/ApocEmpireSymbol
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

textures/Shola_Temple/pure_white
{
    q3map_nolightmap
    surfaceparm    nodamage
    {
        map textures/Shola_Temple/pure_white
        rgbGen lightingDiffuse
    }
    {
        map textures/Shola_Temple/pure_white
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/Shola_Temple/reflectivemetal
{   
    q3map_nolightmap
    cull disable
    {
        map textures/Shola_Temple/reflectivemetal       
        tcGen environment
        rgbGen identity
	}   
        {
		map textures/Shola_Temple/reflectivemetal
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
		glow
    }
}




//KOTORMODELS




models/map_objects/korenc/kolto
{
	qer_editorimage	models/map_objects/kotor/kolto.tga
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	Glass
	q3map_nolightmap
    {
        map models/map_objects/korenc/kolto
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
        map models/map_objects/korenc/kolto
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/map_objects/korenc/bubbles
        blendFunc blend
        tcMod scroll 0 0.2
    }
}

models/map_objects/korenc/koltotank
{
	qer_editorimage models/map_objects/korenc/koltotank.jpg
	q3map_lightimage models/map_objects/korenc/koltotank_glow.jpg
	q3map_shadeangle	90
	q3map_surfacelight 500
	q3map_backSplash 0.5 8
	q3map_nonplanar
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/koltotank
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/koltotank_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/korenc/koltotank_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/korenc/sithholocron
{
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/sithholocron
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/sithholocron_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/korenc/datapad
{
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/datapad
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/datapad_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/korenc/cage
{
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/cage
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/cage_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/korenc/orangewrktable
{
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/orangewrktable
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/orangewrktable_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}

models/map_objects/korenc/bluewrktable
{
    {
        map $lightmap
    }
    {
        map models/map_objects/korenc/bluewrktable
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/korenc/bluewrktable_glow
        blendFunc GL_ONE GL_ONE
	glow
    }
}








//NOFALLDAMAGETEXTURES


textures/Shola_Temple/amtn
{
qer_editorimage textures/Shola_Temple/amtn
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/amtn
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/banner
{
qer_editorimage textures/Shola_Temple/banner
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/banner
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/bcarpet
{
qer_editorimage textures/Shola_Temple/bcarpet
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/bcarpet
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/black_noise
{
qer_editorimage textures/Shola_Temple/black_noise
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/black_noise
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/blackmarble
{
qer_editorimage textures/Shola_Temple/blackmarble
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/blackmarble
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/e6c_floor
{
qer_editorimage textures/Shola_Temple/e6c_floor
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/e6c_floor
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/floor2_black
{
qer_editorimage textures/Shola_Temple/floor2_black
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/floor2_black
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/floor2_red2
{
qer_editorimage textures/Shola_Temple/floor2_red2
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/floor2_red2
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/floor3
{
qer_editorimage textures/Shola_Temple/floor3
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/floor3
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/k_basicfloor2_dark3
{
qer_editorimage textures/Shola_Temple/k_basicfloor2_dark3
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/k_basicfloor2_dark3
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}

textures/Shola_Temple/lavarock5555
{
qer_editorimage textures/Shola_Temple/lavarock5555
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/lavarock5555
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/n_floor01
{
qer_editorimage textures/Shola_Temple/n_floor01
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/n_floor01
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/tagteamarena
{
qer_editorimage textures/Shola_Temple/tagteamarena
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/tagteamarena
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/tileblock2
{
qer_editorimage textures/Shola_Temple/tileblock2
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/tileblock2
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/wood
{
qer_editorimage textures/Shola_Temple/wood
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/wood
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/blackseat
{
qer_editorimage textures/Shola_Temple/blackseat
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/blackseat
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/ll_carpet
{
qer_editorimage textures/Shola_Temple/ll_carpet
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/ll_carpet
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/redcarpet
{
qer_editorimage textures/Shola_Temple/redcarpet
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/redcarpet
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/Shola_Temple/redwood
{
qer_editorimage textures/Shola_Temple/redwood
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/Shola_Temple/redwood
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}


textures/common/lrock2
{
qer_editorimage textures/common/lrock2
surfaceparm    nodamage
{
map $lightmap
rgbGen identityLighting
}
{
map textures/common/lrock2
blendFunc GL_DST_COLOR GL_ZERO
rgbGen identityLighting
}
}






//SIGNSandPOSTERSLightMap

textures/Room_Labels/Acidcage
{
    q3map_nolightmap
    {
        map textures/Room_Labels/Acidcage
        
    }
}

textures/Room_Labels/amountainsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/amountainsign
        
    }
}

textures/Room_Labels/ECtelesign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/ECtelesign
        
    }
}

textures/Room_Labels/Hangarbaysign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/Hangarbaysign
        
    }
}

textures/Room_Labels/kotorcages
{
    q3map_nolightmap
    {
        map textures/Room_Labels/kotorcages
        
    }
}

textures/Room_Labels/longjumpsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/longjumpsign
        
    }
}

textures/Room_Labels/movementv2sign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/movementv2sign
        
    }
}

textures/Room_Labels/personalquarterssign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/personalquarterssign
        
    }
}

textures/Room_Labels/rancorsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/rancorsign
        
    }
}

textures/Room_Labels/sprintsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/sprintsign
        
    }
}

textures/Room_Labels/strafepadstele
{
    q3map_nolightmap
    {
        map textures/Room_Labels/strafepadstele
        
    }
}

textures/Room_Labels/tagteamarenasign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/tagteamarenasign
        
    }
}

textures/Room_Labels/trainingroomsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/trainingroomsign
        
    }
}

textures/Room_Labels/wastelandssign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/wastelandssign
        
    }
}

textures/Room_Labels/zmountainsign
{
    q3map_nolightmap
    {
        map textures/Room_Labels/zmountainsign
        
    }
}

textures/Shola_Temple/jc_jumpcourse
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_jumpcourse
        
    }
}

textures/Shola_Temple/jc_longjumps
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_longjumps
        
    }
}

textures/Shola_Temple/jc_manaanwatercourse
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_manaanwatercourse
        
    }
}

textures/Shola_Temple/jc_precisionjumpcourse
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_precisionjumpcourse
        
    }
}

textures/Shola_Temple/jc_slopecourse
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_slopecourse
        
    }
}

textures/Shola_Temple/jc_wallgrabcourse
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/jc_wallgrabcourse
        
    }
}

textures/Shola_Temple/n00bmer1
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber1
        
    }
}

textures/Shola_Temple/n00mber2
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber2
        
    }
}

textures/Shola_Temple/n00mber3
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber3
        
    }
}

textures/Shola_Temple/n00mber4
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber4
        
    }
}

textures/Shola_Temple/n00mber5
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber5
        
    }
}

textures/Shola_Temple/n00mber6
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/n00mber6
        
    }
}

textures/Shola_Temple/numbah-1
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-1
        
    }
}

textures/Shola_Temple/numbah-2
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-2
        
    }
}

textures/Shola_Temple/numbah-3
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-3
        
    }
}

textures/Shola_Temple/numbah-4
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-4
        
    }
}

textures/Shola_Temple/numbah-125
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-125
        
    }
}

textures/Shola_Temple/numbah-200
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-200
        
    }
}

textures/Shola_Temple/numbah-300
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-300
        
    }
}

textures/Shola_Temple/numbah-400
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-400
        
    }
}

textures/Shola_Temple/numbah-500
{
    q3map_nolightmap
    {
        map textures/Shola_Temple/numbah-500
        
    }
}

textures/Shola_Library/acolytes
{
    q3map_nolightmap
    {
        map textures/Shola_Library/acolytes
        
    }
}

textures/Shola_Library/arken
{
    q3map_nolightmap
    {
        map textures/Shola_Library/arken
        
    }
}

textures/Shola_Library/blackout
{
    q3map_nolightmap
    {
        map textures/Shola_Library/blackout
        
    }
}

textures/Shola_Library/Cerb
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Cerb
        
    }
}

textures/Shola_Library/darkempireexiles
{
    q3map_nolightmap
    {
        map textures/Shola_Library/darkempireexiles
        
    }
}

textures/Shola_Library/darkempirefriends
{
    q3map_nolightmap
    {
        map textures/Shola_Library/darkempirefriends
        
    }
}

textures/Shola_Library/darth_apoc_library
{
    q3map_nolightmap
    {
        map textures/Shola_Library/darth_apoc_library
        
    }
}

textures/Shola_Library/Darth_Martyr
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Darth_Martyr
        
    }
}

textures/Shola_Library/darthpanopticus
{
    q3map_nolightmap
    {
        map textures/Shola_Library/darthpanopticus
        
    }
}

textures/Shola_Library/Death
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Death
        
    }
}

textures/Shola_Library/desiterules
{
    q3map_nolightmap
    {
        map textures/Shola_Library/desiterules
        
    }
}

textures/Shola_Library/Dew
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Dew
        
    }
}

textures/Shola_Library/ECpicture
{
    q3map_nolightmap
    {
        map textures/Shola_Library/ECpicture
        
    }
}

textures/Shola_Library/Empari
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Empari
        
    }
}

textures/Shola_Library/Eradicus
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Eradicus
        
    }
}

textures/Shola_Library/Forgottendarkempire
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Forgottendarkempire
        
    }
}

textures/Shola_Library/infected
{
    q3map_nolightmap
    {
        map textures/Shola_Library/infected
        
    }
}

textures/Shola_Library/jkaconsolecmds
{
    q3map_nolightmap
    {
        map textures/Shola_Library/jkaconsolecmds
        
    }
}

textures/Shola_Library/Kenshiro
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Kenshiro
        
    }
}

textures/Shola_Library/Kraytcode
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Kraytcode
        
    }
}

textures/Shola_Library/kttarchive
{
    q3map_nolightmap
    {
        map textures/Shola_Library/kttarchive
        
    }
}

textures/Shola_Library/Nienna
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Nienna
        
    }
}

textures/Shola_Library/ogdemap
{
    q3map_nolightmap
    {
        map textures/Shola_Library/ogdemap
        
    }
}

textures/Shola_Library/Pandorum
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Pandorum
        
    }
}

textures/Shola_Library/Radiuks
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Radiuks
        
    }
}

textures/Shola_Library/Rancorportrat
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Rancorportrat
        
    }
}

textures/Shola_Library/Sac
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Sac
        
    }
}

textures/Shola_Library/Sensei
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Sensei
        
    }
}

textures/Shola_Library/shadow_fortress
{
    q3map_nolightmap
    {
        map textures/Shola_Library/shadow_fortress
        
    }
}

textures/Shola_Library/Sid
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Sid
        
    }
}

textures/Shola_Library/sitharishowdown
{
    q3map_nolightmap
    {
        map textures/Shola_Library/sitharishowdown
        
    }
}

textures/Shola_Library/sithcouncilv2
{
    q3map_nolightmap
    {
        map textures/Shola_Library/sithcouncilv2
        
    }
}

textures/Shola_Library/sithsanc
{
    q3map_nolightmap
    {
        map textures/Shola_Library/sithsanc
        
    }
}

textures/Shola_Library/Slayus
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Slayus
        
    }
}

textures/Shola_Library/SorzusSyn
{
    q3map_nolightmap
    {
        map textures/Shola_Library/SorzusSyn
        
    }
}

textures/Shola_Library/Starlight
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Starlight
        
    }
}

textures/Shola_Library/UnitedForces
{
    q3map_nolightmap
    {
        map textures/Shola_Library/UnitedForces
        
    }
}

textures/Shola_Library/vondurr
{
    q3map_nolightmap
    {
        map textures/Shola_Library/vondurr
        
    }
}

textures/Shola_Library/Wookiee
{
    q3map_nolightmap
    {
        map textures/Shola_Library/Wookiee
        
    }
}

textures/sholawallart/Apocleaked
{
    q3map_nolightmap
    {
        map textures/sholawallart/Apocleaked
        
    }
}

textures/sholawallart/BruceLeequote
{
    q3map_nolightmap
    {
        map textures/sholawallart/BruceLeequote
        
    }
}

textures/sholawallart/darksidepowers
{
    q3map_nolightmap
    {
        map textures/sholawallart/darksidepowers
        
    }
}

textures/sholawallart/darthtitle
{
    q3map_nolightmap
    {
        map textures/sholawallart/darthtitle
        
    }
}

textures/sholawallart/decatsprefer
{
    q3map_nolightmap
    {
        map textures/sholawallart/decatsprefer
        
    }
}

textures/sholawallart/demooffear
{
    q3map_nolightmap
    {
        map textures/sholawallart/demooffear
        
    }
}

textures/sholawallart/DEwebsite
{
    q3map_nolightmap
    {
        map textures/sholawallart/DEwebsite
        
    }
}

textures/sholawallart/droidoom
{
    q3map_nolightmap
    {
        map textures/sholawallart/droidoom
        
    }
}

textures/sholawallart/fusradah
{
    q3map_nolightmap
    {
        map textures/sholawallart/fusradah
        
    }
}

textures/sholawallart/gridcharacters
{
    q3map_nolightmap
    {
        map textures/sholawallart/gridcharacters
        
    }
}

textures/sholawallart/holocroninfo
{
    q3map_nolightmap
    {
        map textures/sholawallart/holocroninfo
        
    }
}

textures/sholawallart/jointheempire
{
    q3map_nolightmap
    {
        map textures/sholawallart/jointheempire
        
    }
}

textures/sholawallart/leviathan
{
    q3map_nolightmap
    {
        map textures/sholawallart/leviathan
        
    }
}

textures/sholawallart/lightsabercombatsith
{
    q3map_nolightmap
    {
        map textures/sholawallart/lightsabercombatsith
        
    }
}

textures/sholawallart/marksofcontact
{
    q3map_nolightmap
    {
        map textures/sholawallart/marksofcontact
        
    }
}

textures/sholawallart/marrondarkside
{
    q3map_nolightmap
    {
        map textures/sholawallart/marrondarkside
        
    }
}

textures/sholawallart/sithmural
{
    q3map_nolightmap
    {
        map textures/sholawallart/sithmural
        
    }
}

textures/sholawallart/starforgeempire
{
    q3map_nolightmap
    {
        map textures/sholawallart/starforgeempire
        
    }
}

textures/sholawallart/tuleoftwoscript
{
    q3map_nolightmap
    {
        map textures/sholawallart/tuleoftwoscript
        
    }
}

textures/sholawallart/wehavecookiees
{
    q3map_nolightmap
    {
        map textures/sholawallart/wehavecookiees
        
    }
}

textures/sholawallart/Catast
{
    q3map_nolightmap
    {
        map textures/sholawallart/Catast
        
    }
}

textures/sholawallart/maladorandannihid
{
    q3map_nolightmap
    {
        map textures/sholawallart/maladorandannihid
        
    }
}

textures/sholawallart/darthapocdrawing
{
    q3map_nolightmap
    {
        map textures/sholawallart/darthapocdrawing
        
    }
}

textures/sholawallart/dontblockwithyourface
{
    q3map_nolightmap
    {
        map textures/sholawallart/dontblockwithyourface
        
    }
}

textures/sholawallart/pcmasterrace
{
    q3map_nolightmap
    {
        map textures/sholawallart/pcmasterrace
        
    }
}

textures/sholawallart/snailtime
{
    q3map_nolightmap
    {
        map textures/sholawallart/snailtime
        
    }
}

textures/sholawallart/regulartime
{
    q3map_nolightmap
    {
        map textures/sholawallart/regulartime
        
    }
}

textures/sholawallart/smallsize
{
    q3map_nolightmap
    {
        map textures/sholawallart/smallsize
        
    }
}

textures/sholawallart/mediumsize
{
    q3map_nolightmap
    {
        map textures/sholawallart/mediumsize
        
    }
}

textures/sholawallart/largesize
{
    q3map_nolightmap
    {
        map textures/sholawallart/largesize
        
    }
}

textures/sholawallart/extrasmall
{
    q3map_nolightmap
    {
        map textures/sholawallart/extrasmall
        
    }
}

textures/sholawallart/extralargesize
{
    q3map_nolightmap
    {
        map textures/sholawallart/extralargesize
        
    }
}