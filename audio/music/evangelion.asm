; A Cruel Angel's Thesis - opening de Neon Genesis Evangelion
; Arreglo para Pokémon Cristal por Manectric-Rang
Music_NGE_Intro:
    musicheader 4, 1, Music_NGE_Intro_Ch1
    musicheader 1, 2, Music_NGE_Intro_Ch2
    musicheader 1, 3, Music_NGE_Intro_Ch3
    musicheader 1, 4, Music_NGE_Intro_Ch4

Music_NGE_Intro_Ch1:
    tempo 150
    volume $77
    stereopanning $0c
    tone $0002
    notetype $c, $1b
    jumpchannel Music_NGE_Ch1_Inicio

Music_NGE_Intro_Ch2:
    stereopanning $c0
    tone $0001
    notetype $c, $1b
    jumpchannel Music_NGE_Ch2_Inicio

Music_NGE_Intro_Ch3:
    jumpchannel Music_NGE_Ch3_Inicio

Music_NGE_Intro_Ch4:
    stereopanning $c0
    togglenoise $5
    notetype $c
    jumpchannel Music_NGE_Ch4_Inicio

Music_NGE:
	musicheader 4, 1, Music_NGE_Ch1
	musicheader 1, 2, Music_NGE_Ch2
	musicheader 1, 3, Music_NGE_Ch3
	musicheader 1, 4, Music_NGE_Ch4


Music_NGE_Ch1:
	tempo 123
	volume $77
	stereopanning $0c
	tone $0002

	dutycycle $2
	notetype $c, $1b
	octave 3
	vibrato $0, $14
	note G_, 1
	intensity $30
	note G_, 15
	note G#, 16
	note A#, 16
	note A#, 8
	intensity $37
	note A#, 8

	intensity $1b
	octave 4
	note C_, 1
	intensity $30
	note C_, 15
	note C_, 16
	octave 3
	note A#, 8
	intensity $35
	note A#, 8
	intensity $1b
	note G#, 1
	intensity $30
	tone $0000
	vibrato $0, $33
	note G#, 15
	tempo 150
	note G#, 6
	intensity $3f
	note G#, 4
	intensity $65
	note G#, 6
	tone $0002
	vibrato $0, $0


Music_NGE_Ch1_Inicio:
	callchannel Music_NGE_Ch1_EstribilloInstrumentalRepeticion
	note A#, 2
	note A#, 2
	note G_, 2
	note A#, 2
	intensity $85
	note A#, 3
	intensity $92
	octave 5
	note C_, 5

	note __, 16
	note __, 16
	octave 2
	dutycycle $1
	intensity $67
	note D#, 8
	note D_, 8
	note C_, 16
	octave 1
	note A#, 8
	note A#, 8
	octave 2
	note G_, 8
	note G_, 8
	note A_, 16
	note F_, 8
	note G_, 8

	note __, 16
	note __, 4
	octave 3
	note F_, 4
	octave 2
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	intensity $60
	note A#, 16
	note A#, 8
	intensity $67
	note A#, 8
	octave 1
	note A#, 8
	note A#, 8
	octave 2
	note G_, 8
	note G_, 8
	octave 4
	intensity $3f
	vibrato $2, $14
	note C_, 8
	intensity $90
	vibrato $0, $24
	note C_, 8
	intensity $90
	vibrato $0, $34
	note D_, 12
	intensity $94
	vibrato $0, $24
	note D_, 4

	vibrato $0, $0
	dutycycle $0
	intensity $85
	octave 5
	note C_, 16
	dutycycle $1
	octave 3
	intensity $40
	note D_, 2
	intensity $44
	note D_, 6
	octave 2
	intensity $40
	note A#, 2
	intensity $44
	note A#, 6
	octave 3
	intensity $40
	note C_, 2
	intensity $44
	note C_, 6
	intensity $40
	note C_, 2
	intensity $44
	note C_, 6
	intensity $70
	note F_, 2
	intensity $74
	note F_, 2
	intensity $70
	note G_, 2
	intensity $74
	note G_, 2
	intensity $70
	note G#, 2
	intensity $74
	note G#, 2
	intensity $70
	note A#, 2
	intensity $74
	note A#, 2
	octave 4
	intensity $70
	note C_, 2
	intensity $76
	note C_, 14
	octave 3
	intensity $70
	note A#, 2
	intensity $75
	note A#, 6
	octave 4
	intensity $70
	note C_, 2
	intensity $75
	note C_, 6
	intensity $70
	note C_, 2
	intensity $77
	note C_, 14
	intensity $70
	note C_, 2
	intensity $76
	note C_, 6

	dutycycle $0
	intensity $94
	note G_, 3
	note A_, 3
	note B_, 2

	dutycycle $1
	intensity $77
	note C_, 4
	dutycycle $0
	octave 5
	intensity $94
	note C_, 2
	slidepitchto 3, 4, C_
	intensity $62
	note C_, 2
	dutycycle $1
	octave 3
	intensity $60
	note F_, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 14
	intensity $62
	note A#, 2

	intensity $65
	octave 4
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 4
	note __, 6
	octave 3
	note A#, 1
	note __, 2
	note A#, 1
	note __, 2
	octave 4
	intensity $60
	note C_, 3
	octave 3
	intensity $64
	note A#, 2
	dutycycle $0
	intensity $93
	octave 4
	note D#, 1
	note G_, 1
	note A#, 1

	octave 5
	intensity $93
	note C_, 2
	slidepitchto 3, 4, C_
	intensity $51
	note C_, 2
	dutycycle $1
	intensity $60
	octave 4
	note C_, 4
	callchannel Music_NGE_Ch1_EstribilloRepeticion

	octave 4
	intensity $92
	note A#, 1
	octave 5
	note C_, 5
	intensity $94
	note C_, 2
	slidepitchto 3, 4, C_
	intensity $62
	note C_, 2
	dutycycle $1
	intensity $60
	callchannel Music_NGE_Ch1_EstribilloRepeticion

	octave 4
	tone $0000
	notetype $6, $70
	note D_, 4
	note F_, 14
	vibrato $0, $62
	tone $0002
	note D_, 10
	note D_, 16
	vibrato $0, $0
	tone $0000
	octave 3
	note B_, 11
	note G#, 1
	note B_, 1
	note G#, 5
	note B_, 1
	note G_, 3
	note F_, 2

	note G_, 1
	note G#, 1
	tone $0002
	vibrato $0, $62
	note G_, 14
	note G_, 10
	vibrato $0, $0
	tone $0000
	note D#, 2
	note F_, 4
	note D#, 2
	note F_, 5
	note D#, 2
	note F_, 4
	vibrato $0, $f2
	note F#, 16
	vibrato $0, $0
	note F_, 3

	octave 2
	note G_, 2
	note B_, 2
	octave 3
	note C_, 1
	octave 2
	note B_, 1
	note G_, 2
	note B_, 1
	octave 3
	note C_, 2
	octave 2
	note B_, 1
	note G_, 2
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 4
	note D_, 6
	note D#, 2

	note F_, 6
	note D#, 2
	note F_, 4
	note G_, 2
	note F_, 6
	note G_, 6
	note G#, 2
	note B_, 2
	note G_, 2

	octave 4
	vibrato $0, $72
	note D#, 16
	note D#, 15
	vibrato $0, $62
	note D_, 10
	vibrato $0, $52
	note C#, 8
	vibrato $0, $42
	note C_, 2
	note D_, 1
	vibrato $0, $32
	note C_, 4
	octave 3
	vibrato $0, $12
	note B_, 5
	intensity $71
	slidepitchto 5, 5, F#
	note B_, 3
	vibrato $0, $0

	tone $0002
	octave 2
	dutycycle $1
	notetype $c, $54
	note G#, 2
	note G#, 3
	note G#, 3
	note G#, 3
	note G#, 3
	note G#, 2
	dutycycle $2
	intensity $80
	octave 4
	note C_, 6
	intensity $82
	note C_, 2

	dutycycle $0
	octave 3
	intensity $19
	note G_, 1
	intensity $80
	note G_, 3
	note F_, 4
	note G_, 14
	intensity $82
	note G_, 2

	intensity $19
	note F_, 1
	intensity $80
	note F_, 3
	intensity $82
	note F_, 2
	note D_, 2
	intensity $19
	note D_, 1
	intensity $83
	note D_, 3
	intensity $80
	note D_, 4

	note G_, 4
	intensity $82
	note G_, 2
	intensity $80
	note G_, 10
	note F_, 6
	intensity $82
	note F_, 2
	dutycycle $1
	intensity $54
	octave 2
	note A#, 3
	note A#, 1

	dutycycle $0
	intensity $80
	octave 3
	note F_, 4
	note G_, 16
	note G_, 6
	intensity $82
	note G_, 2

	octave 2
	intensity $c2
	note A#, 1
	octave 3
	note D_, 1
	note F_, 1
	note A#, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note G_, 1
	note B_, 1

	callchannel Music_NGE_Ch1_EstribilloInstrumentalRepeticion
	note D_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note F_, 1
	intensity $81
	note D#, 2
	intensity $82
	note D#, 5

	loopchannel 0, Music_NGE_Ch1_Inicio



Music_NGE_Ch1_EstribilloInstrumentalRepeticion:
	dutycycle $2
	octave 4
	intensity $80
	note C_, 2
	intensity $81
	note C_, 2
	intensity $82
	note D#, 3
	intensity $6b
	slidepitchto 4, 4, F_
	note D#, 2
	note F_, 1
	intensity $81
	note F_, 1
	intensity $83
	note D#, 3
	intensity $82
	note F_, 2
	note F_, 2
	note F_, 2
	note A#, 2
	note G#, 2
	note G_, 1
	intensity $81
	note F_, 2
	intensity $82
	note G_, 5

	intensity $83
	note G_, 4
	intensity $85
	note A#, 4
	octave 5
	intensity $86
	note C_, 3
	octave 4
	intensity $83
	note F_, 3
	intensity $82
	note D#, 2
	endchannel

Music_NGE_Ch1_EstribilloRepeticion:
	octave 3
	note F_, 4
	intensity $60
	octave 4
	note D#, 4
	note D_, 8
	note D#, 7
	intensity $61
	note D#, 1

	intensity $65
	octave 4
	note __, 2
	note C_, 1
	note __, 2
	note C_, 1
	note __, 2
	note C_, 3
	intensity $61
	note C_, 5

	dutycycle $0
	intensity $b2
	note A#, 2
	note A#, 2
	note G_, 2
	note A#, 2
	intensity $b5
	note A#, 3
	intensity $b2
	octave 5
	note C_, 3
	endchannel



Music_NGE_Ch2:
	stereopanning $c0
	tone $0001

	dutycycle $2
	notetype $c, $1b
	vibrato $0, $15
	octave 4

	note C_, 1
	intensity $30
	note C_, 15
	note C_, 16
	note D_, 16
	note D#, 8
	intensity $37
	note D#, 8

	intensity $1b
	note D#, 1
	intensity $30
	note D#, 15
	note F_, 16
	note D_, 8
	intensity $35
	note D_, 8
	intensity $1b
	note D#, 1
	intensity $30
	vibrato $0, $24
	note D#, 15
	note D#, 6
	intensity $3f
	note D#, 4
	intensity $65
	note D#, 6
	vibrato $0, $0

Music_NGE_Ch2_Inicio:
	callchannel Music_NGE_Ch2_EstribilloInstrumentalRepeticion
	note A#, 2
	note A#, 2
	note G_, 2
	note A#, 2
	intensity $c5
	note A#, 3
	intensity $d2
	octave 4
	note C_, 5

	dutycycle $2
	callchannel Music_NGE_Ch2_EstrofaInicio
	note F_, 4
	note C_, 4
	intensity $c5
	note C_, 6
	intensity $c3
	note D_, 2
	intensity $c5
	note D_, 8

	callchannel Music_NGE_Ch2_EstrofaInicio
	note F_, 3
	note G_, 3
	note G#, 2
	intensity $c7
	tone $0003
	vibrato $4, $36
	note G_, 16
	tone $0001
	vibrato $0, $0

	intensity $c3
	note D#, 3
	intensity $c4
	note D#, 3
	intensity $c3
	note D_, 2
	intensity $c2
	note D#, 3
	intensity $c4
	note D#, 3
	intensity $c2
	note D_, 2
	intensity $c4
	note F_, 3
	intensity $c3
	note F_, 3
	note D#, 2
	note D_, 3
	intensity $c4
	note C_, 3
	note D_, 2
	note D#, 3
	intensity $c3
	note D#, 3
	note D_, 2
	note F_, 3
	note D_, 3
	note C_, 2
	octave 2
	intensity $c4
	note A#, 4
	octave 3
	dutycycle 3
	intensity $60
	note D#, 2
	intensity $64
	note D#, 2
	intensity $60
	note F_, 2
	intensity $64
	note F_, 2
	intensity $60
	note G_, 2
	intensity $64
	note G_, 2
	dutycycle 2

	octave 3
	intensity $c4
	note D#, 3
	note D#, 3
	intensity $c3
	note D_, 2
	intensity $c4
	note D#, 3
	note D#, 3
	note D_, 2
	intensity $c2
	note F_, 3
	intensity $c3
	note F_, 3
	note D#, 2
	intensity $c4
	note D_, 3
	note D#, 3
	note F_, 2
	note G_, 3
	note G#, 3
	note G_, 2
	note F_, 3
	note D#, 3
	note F_, 2
	intensity $c5
	tone $0003
	vibrato $4, $14
	note G_, 8
	tone $0001
	vibrato $0, $0

	dutycycle $0
	intensity $74
	note B_, 3
	octave 4
	note C_, 3
	note D_, 2

	dutycycle $2
	callchannel Music_NGE_Ch2_EstribilloSemifrase1
	callchannel Music_NGE_Ch2_EstribilloSemifrase2a
	callchannel Music_NGE_Ch2_EstribilloSemifrase1
	callchannel Music_NGE_Ch2_EstribilloSemifrase2b
	callchannel Music_NGE_Ch2_EstribilloSemifrase1
	callchannel Music_NGE_Ch2_EstribilloSemifrase2b

Music_NGE_Ch2_Descansico:
	note __, 16
	loopchannel 8, Music_NGE_Ch2_Descansico

	octave 3
	dutycycle $1
	intensity $54
	note D#, 2
	note D#, 3
	note D#, 3
	dutycycle $2
	intensity $19
	note G_, 1
	intensity $80
	note G_, 3
	note F_, 4

	dutycycle $0
	note F_, 3
	intensity $82
	note F_, 2
	dutycycle $1
	intensity $54
	octave 2
	note A#, 3
	note A#, 3
	note A#, 3
	note A#, 2

	octave 3
	note D#, 2
	note D#, 3
	note D#, 3
	dutycycle $2
	intensity $19
	note G_, 1
	intensity $80
	note G_, 3
	note F_, 4

	octave 4
	note C_, 6
	octave 3
	note A#, 8
	intensity $82
	note A#, 2

	dutycycle $1
	intensity $54
	note D#, 2
	note D#, 3
	note D#, 3
	dutycycle $2
	intensity $19
	note G_, 1
	intensity $80
	note G_, 3
	note F_, 4

	octave 4
	note C_, 6
	intensity $82
	note C_, 2
	dutycycle $1
	intensity $54
	octave 3
	note D_, 3
	note D_, 1
	dutycycle $2
	intensity $90
	note A#, 4
	octave 4
	note D_, 16
	note D_, 10
	intensity $92
	note D_, 2
	note __, 4

	callchannel Music_NGE_Ch2_EstribilloInstrumentalRepeticion
	note D_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note F_, 1
	intensity $c1
	note D#, 2
	intensity $c2
	note D#, 5
	
	loopchannel 0, Music_NGE_Ch2_Inicio



Music_NGE_Ch2_EstribilloInstrumentalRepeticion:
	dutycycle $3
	octave 3
	intensity $c0
	note C_, 2
	intensity $c1
	note C_, 2
	intensity $c2
	note D#, 3
	intensity $c0
	slidepitchto 4, 3, F_
	note D#, 2
	note F_, 1
	intensity $c1
	note F_, 1
	intensity $c3
	note D#, 3
	intensity $c2
	note F_, 2
	note F_, 2
	note F_, 2
	note A#, 2
	note G#, 2
	note G_, 1
	intensity $c1
	note F_, 2
	intensity $c2
	note G_, 5

	intensity $c3
	note G_, 4
	intensity $c5
	note A#, 4
	octave 4
	intensity $c6
	note C_, 3
	octave 3
	intensity $c3
	note F_, 3
	intensity $c2
	note D#, 2
	endchannel


Music_NGE_Ch2_EstrofaInicio:
	octave 3
	note __, 4
	intensity $c4
	note D#, 2
	octave 2
	intensity $c3
	note A#, 2
	note A#, 6
	octave 3
	note D#, 2
	intensity $c4
	note D#, 3
	note F_, 3
	octave 2
	intensity $c3
	note A#, 2
	note A#, 6
	note A#, 2
	intensity $c4
	octave 3
	note G_, 3
	note G#, 3
	intensity $c3
	note G_, 2
	intensity $c4
	note F_, 3
	note D#, 3
	intensity $c3
	note F_, 2
	intensity $c4
	note G_, 3
	note G#, 3
	intensity $c3
	note G_, 2
	note C_, 6
	intensity $c1
	note C_, 1
	note D_, 1

	intensity $c4
	note D#, 3
	intensity $c3
	note D#, 3
	note D_, 2
	note D_, 6
	intensity $c1
	note D#, 1
	note F_, 1
	intensity $c2
	note G#, 3
	intensity $c4
	note G_, 3
	intensity $c3
	note F_, 2
	note D#, 6
	note F_, 2
	intensity $c4
	note G_, 3
	note F_, 3
	note E_, 2
	endchannel

Music_NGE_Ch2_EstribilloSemifrase1:
	octave 3
	intensity $d3
	note C_, 4
	note D#, 4
	intensity $d4
	note F_, 3
	note D#, 3
	intensity $d2
	note F_, 2
	intensity $d3
	note F_, 2
	intensity $d2
	note F_, 2
	intensity $d3
	note A#, 2
	intensity $d2
	note G#, 2
	intensity $d3
	note G_, 1
	intensity $d1
	note F_, 2
	intensity $d2
	note G_, 5
	endchannel

Music_NGE_Ch2_EstribilloSemifrase2a:
	intensity $d4
	note G_, 4
	note A#, 4
	octave 4
	intensity $d4
	note C_, 3
	octave 3
	note F_, 3
	intensity $d3
	note D#, 2
	note D_, 2
	intensity $d2
	note D_, 2
	note C_, 2
	note D_, 2
	intensity $d3
	note F_, 1
	intensity $d1
	note D#, 2
	intensity $d2
	note D#, 5
	endchannel

Music_NGE_Ch2_EstribilloSemifrase2b:
	intensity $d4
	note G_, 4
	note A#, 4
	octave 4
	intensity $d4
	note C_, 3
	octave 3
	note F_, 3
	intensity $d2
	note D#, 2
	intensity $f4
	note A#, 2
	note A#, 2
	note G_, 2
	note A#, 2
	intensity $f5
	note A#, 3
	intensity $f2
	octave 4
	note C_, 5
	endchannel



Music_NGE_Ch3:
	notetype $8, $10

	octave 4
	note C_, 12
	note D#, 12
	note F_, 8
	note __, 1
	note D#, 9
	note F_, 5
	note __, 1
	note F_, 5
	note __, 1
	intensity $20
	note F_, 5
	intensity $10
	note __, 1
	note A#, 6
	note G#, 6
	note G_, 3
	note F_, 5
	note __, 1
	note G_, 7
	note __, 8

	note G_, 12
	note A#, 12
	octave 5
	note C_, 9
	octave 4
	note F_, 9
	note D#, 6
	note A#, 6
	intensity $20
	note A#, 6
	intensity $10
	note G_, 6
	note A#, 5
	note __, 1
	note A#, 9
	octave 5
	note C_, 15
	note C_, 12
	note C_, 6
	note __, 6

Music_NGE_Ch3_Inicio:
	notetype $6, $16
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2b

	notetype $c, $17
	callchannel Music_NGE_Ch3_InicioEstrofa
	note G_, 8
	octave 2
	note G_, 8
	callchannel Music_NGE_Ch3_InicioEstrofa
	note G_, 4
	octave 2
	note G_, 4
	note F_, 4
	note G_, 4

	octave 1
	notetype $6, $17
	callchannel Music_NGE_Ch3_PreEstribillo

	octave 1
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note F_, 1
	note __, 1
	note A#, 2
	note __, 2
	note A#, 2
	note __, 2
	note A#, 1
	note __, 1
	note A#, 2
	note __, 2
	note F_, 2
	note __, 2 
	
	note A#, 2
	note __, 2
	note A#, 2
	note __, 2
	octave 2
	note F_, 2
	note __, 2
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note D#, 2
	note __, 2
	note D#, 2
	note __, 2
	octave 1
	note A#, 2
	note __, 2
	note A_, 2
	note __, 2

	callchannel Music_NGE_Ch3_PreEstribillo
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note D_, 1
	note __, 1
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2
	note D_, 1
	note __, 1
	note D_, 2
	note __, 2
	note D_, 2
	note __, 2

Music_NGE_Ch3_FinalPreEstribilloBucle:
	octave 2
	note G_, 3
	note __, 1
	octave 1
	note G_, 3
	note __, 1
	loopchannel 4, Music_NGE_Ch3_FinalPreEstribilloBucle

	intensity $16
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2b
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	note A#, 3
	note __, 1
	note A#, 3
	note __, 1
	note G_, 3
	note __, 1
	note A#, 3
	note __, 1
	note A#, 4
	note __, 2
	octave 2
	note C_, 2
	note __, 8

	intensity $36
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	octave 1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas2
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas2

	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas1
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	note D#, 3
	note __, 5
	octave 1
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas2
	callchannel Music_NGE_Ch3_BajoSilenciosoCompas2

	intensity $27
	callchannel Music_NGE_Ch3_BajoPreReinicio
	note G_, 3
	note __, 1
	note G_, 5
	note __, 1
	note G_, 5
	note __, 1
	note G_, 1
	note __, 1
	note G_, 3
	note __, 1
	note G_, 1
	note __, 1
	note G_, 3
	note __, 1
	note G_, 3
	note __, 1
	callchannel Music_NGE_Ch3_BajoPreReinicio
	note A#, 3
	note __, 1
	note A#, 5
	note __, 1
	note A#, 5
	note __, 1
	intensity $16
	note A#, 3
	note __, 1
	note A#, 3
	note __, 1
	note B_, 3
	note __, 1
	note B_, 3
	note __, 1

	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	callchannel Music_NGE_Ch3_BajoEstribillo1
	callchannel Music_NGE_Ch3_BajoEstribillo2a
	loopchannel 0, Music_NGE_Ch3_Inicio



Music_NGE_Ch3_BajoEstribillo1:
	octave 2
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note D#, 3
	note __, 3
	note F_, 2
	note __, 2
	note F_, 3
	note __, 1
	note F_, 1
	note __, 1
	note C_, 3
	note __, 1
	octave 1
	endchannel

Music_NGE_Ch3_BajoEstribillo2a:
	note A#, 2
	note __, 2
	note A#, 2
	note __, 2
	note A#, 3
	note __, 1
	octave 2
	note D_, 2
	note __, 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 3
	note D#, 1
	note __, 1
	note D#, 3
	note __, 1
	note D_, 3
	note __, 1
	endchannel

Music_NGE_Ch3_BajoEstribillo2b:
	note A#, 2
	note __, 2
	note A#, 2
	note __, 2
	note A#, 2
	note __, 2
	note B_, 2
	note __, 2
	octave 2
	note C_, 1
	note __, 1
	note C_, 2
	note __, 2
	note C_, 1
	note __, 1
	octave 1
	note A#, 3
	note __, 1
	octave 2
	note C_, 2
	note __, 2
	endchannel

Music_NGE_Ch3_InicioEstrofa:
	note D#, 16
	octave 1
	note A#, 16
	octave 2
	note C_, 8
	octave 1
	note A#, 8
	note G#, 16

	note A#, 16
	octave 2
	note D#, 8
	note C_, 8
	note D_, 16
	octave 1
	endchannel

Music_NGE_Ch3_PreEstribillo:
	note G#, 2
	note __, 2
	note G#, 2
	note __, 2
	note G#, 2
	note __, 2
	note G#, 1
	note __, 1
	note G#, 2
	note __, 2
	note G#, 2
	note __, 2
	note G#, 1
	note __, 1
	note G#, 2
	note __, 2
	note G#, 2
	note __, 2

	note G_, 2
	note __, 2
	note G_, 2
	note __, 2
	note G_, 2
	note __, 2
	note G_, 1
	note __, 1
	octave 2
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 1
	note __, 1
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	endchannel

Music_NGE_Ch3_BajoSilenciosoCompas1:
	note C_, 2
	octave 1
	note A#, 2
	octave 2
	note C_, 4
	note __, 2
	octave 1
	note G_, 2
	note A#, 2
	octave 2
	note C_, 2
	endchannel

Music_NGE_Ch3_BajoSilenciosoCompas2:
	note A#, 2
	note G#, 2
	note A#, 4
	note __, 2
	note F_, 2
	note G#, 2
	note A#, 2
	endchannel

Music_NGE_Ch3_BajoPreReinicio:
	note F_, 3
	note __, 1
	note F_, 5
	note __, 1
	note F_, 5
	note __, 1
	note F_, 1
	note __, 1
	note F_, 3
	note __, 1
	note F_, 1
	note __, 1
	note F_, 3
	note __, 1
	note F_, 3
	note __, 1

	note G_, 3
	note __, 1
	note G_, 5
	note __, 1
	note G_, 5
	note __, 1
	note G_, 1
	note __, 1
	note G_, 3
	note __, 1
	note G_, 1
	note __, 1
	note G_, 3
	note __, 1
	note G_, 3
	note __, 1

	note G#, 3
	note __, 1
	note G#, 5
	note __, 1
	note G#, 5
	note __, 1
	note G#, 1
	note __, 1
	note G#, 3
	note __, 1
	note G#, 1
	note __, 1
	note G#, 3
	note __, 1
	note G#, 3
	note __, 1
	endchannel



Music_NGE_Ch4:
	stereopanning $c0
	togglenoise $5
	notetype $c
Music_NGE_Ch4_Espera:
	note __, 16
	loopchannel 8, Music_NGE_Ch4_Espera
	note __, 8
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note C_, 1
	note C#, 1
	note E_, 1
	note F_, 1

Music_NGE_Ch4_Inicio:
	note G#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note C#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa

	note G#, 2
Music_NGE_Ch4_BucleEstrofa:
	note A#, 2
	note A#, 2
	note G_, 2
	note C#, 1
	note A#, 1
	note G_, 2
	note A#, 2
	note A#, 2
	note C#, 2
	note A#, 1
	note A#, 1
	note C#, 2
	note A#, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note G_, 2
	note C#, 2
	loopchannel 7, Music_NGE_Ch4_BucleEstrofa
	note A#, 2
	note A#, 2
	note G_, 2
	note C#, 1
	note A#, 1
	note G_, 2
	note A#, 2
	note A#, 2
	note D#, 4
	note G#, 4
	note D#, 4
	note G#, 2
	note B_, 1
	note B_, 1

Music_NGE_Ch4_BuclePreEstribillo:
	note C#, 2
	note A#, 2
	note A#, 2
	note G_, 2
	note C#, 1
	note A#, 1
	note G_, 2
	note A#, 2
	note A#, 2
	note C#, 2
	note A#, 1
	note A#, 1
	note C#, 2
	note A#, 2
	note C#, 2
	note A#, 2
	note A#, 2
	note G_, 2
	loopchannel 3, Music_NGE_Ch4_BuclePreEstribillo
	note C#, 2
	note A#, 2
	note A#, 2
	note G_, 2
	note C#, 1
	note A#, 1
	note G_, 2
	note D#, 2
	note D#, 2
	note B_, 2
	note A#, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note F_, 2
	note F_, 2
	note D#, 2

	note G#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note C#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note G#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note C#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note G#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note C#, 2
	note B_, 1
	note D_, 1
	note B_, 1
	note D_, 1
	note F_, 1
	note D_, 1
	note E_, 1
	note B_, 1
	note B_, 1
	note D_, 1
	note B_, 1
	note D_, 1
	note D#, 2

	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 3
	note B_, 5

Music_NGE_Ch4_GuitarraBucle:
	note B_, 2
	note G_, 1
	note B_, 1
	note G_, 1
	note __, 1
	note C#, 2
	note C_, 1
	note D#, 1
	note C_, 2
	note C#, 2
	note D_, 2
	loopchannel 6, Music_NGE_Ch4_GuitarraBucle
	note B_, 2
	note G_, 1
	note B_, 1
	note G_, 1
	note __, 1
	note C#, 2
	note C_, 1
	note D#, 1
	note C_, 2
	note C#, 2
	note D#, 2

	note B_, 2
	note G_, 1
	note B_, 1
	note E_, 2
	note E_, 2
	note F_, 1
	note E_, 1
	note F_, 2
	note G#, 4

Music_NGE_Ch4_BucleCoros:
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	loopchannel 7, Music_NGE_Ch4_BucleCoros
	note D_, 2
	note G_, 2
	note D#, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note G_, 2
	note D#, 2
	note D#, 2
	note B_, 4
	note B_, 4

	note G#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	note C#, 2
	callchannel Music_NGE_Ch4_EstribilloCompasSinAnacrusa
	loopchannel 0, Music_NGE_Ch4_Inicio



Music_NGE_Ch4_EstribilloCompasSinAnacrusa:
	note B_, 1
	note D_, 1
	note B_, 1
	note D_, 1
	note F_, 1
	note D_, 1
	note E_, 1
	note B_, 1
	note B_, 1
	note D_, 1
	note B_, 1
	note D_, 1
	note D#, 2

	note C#, 2
	note B_, 1
	note B_, 1
	note E_, 1
	note D_, 1
	note F_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note F_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note D#, 2
	endchannel
