USE [Persona5]
GO
/****** Object:  StoredProcedure [dbo].[fusao]    Script Date: 8/3/2020 11:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


alter PROCEDURE [dbo].[fusaoEspecial] (@lista varchar(MAX))
AS

SET NOCOUNT ON

truncate table aux.fusao_especial


if charindex('Nebiros',@lista) > 0 and charindex('Belial',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Nebiros + Belial', * from dim.persona where name = 'Alice'
end

if charindex('Parvati',@lista) > 0 and charindex('Shiva',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Parvati + Shiva', * from dim.persona where name = 'Ardha'
end

if charindex('Zouchouten',@lista) > 0 and charindex('Jikokuten',@lista) > 0 and charindex('Koumokuten',@lista) > 0 and charindex('Bishamonten',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Zouchouten + Jikokuten + Koumokuten + Bishamonten', * from dim.persona where name = 'Asura-Ou'
end

if charindex('Jack-o-Lantern',@lista) > 0 and charindex('Jack Frost',@lista) > 0 and charindex('King Frost',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Jack o Lantern + Jack Frost + King Frost', * from dim.persona where name = 'Black Frost'
end

if charindex('Pixie',@lista) > 0 and charindex('Pisaca',@lista) > 0 and charindex('Hariti',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Pixie + Pisaca + Hariti', * from dim.persona where name = 'Bugs'
end

if charindex('Hecatoncheires',@lista) > 0 and charindex('White Rider',@lista) > 0 and charindex('Thor',@lista) > 0 and charindex('Yoshitsune',@lista) > 0 and charindex('Cu Chulainn',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Hecatoncheires + White Rider + Thor + Yoshitsune + Cu Chulainn', * from dim.persona where name = 'Chi You'
end

if charindex('Berith',@lista) > 0 and charindex('Andras',@lista) > 0 and charindex('Eligor',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Berith + Andras + Eligor', * from dim.persona where name = 'Flauros'
end

if charindex('Genbu',@lista) > 0 and charindex('Seiryu',@lista) > 0 and charindex('Suzaku',@lista) > 0 and charindex('Byakko',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Genbu + Seiryu + Suzaku + Byakko', * from dim.persona where name = 'Kohryu'
end

if charindex('Anubis',@lista) > 0 and charindex('Ananta',@lista) > 0 and charindex('Trumpeter',@lista) > 0 and charindex('Michael',@lista) > 0 and charindex('Metatron',@lista) > 0 and charindex('Satan',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Anubis + Ananta + Trumpeter + Michael + Metatron + Satan', * from dim.persona where name = 'Lucifer'
end


if charindex('Principality',@lista) > 0 and charindex('Power',@lista) > 0 and charindex('Dominion',@lista) > 0 and charindex('Melchizedek',@lista) > 0 and charindex('Sandalphon',@lista) > 0 and charindex('Michael',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Principality + Power + Dominion + Melchizedek + Sandalphon + Michael', * from dim.persona where name = 'Metatron'
end

if charindex('Raphael',@lista) > 0 and charindex('Gabriel',@lista) > 0 and charindex('Uriel',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Raphael + Gabriel + Uriel', * from dim.persona where name = 'Michael'
end

if charindex('Kodama',@lista) > 0 and charindex('Sudama',@lista) > 0 and charindex('Anzu',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Kodama + Sudama + Anzu', * from dim.persona where name = 'Neko Shogun'
end

if charindex('Kin-ki',@lista) > 0 and charindex('Sui-ki',@lista) > 0 and charindex('Fuu-ki',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Kin-ki + Sui-ki + Fuu-ki', * from dim.persona where name = 'Ongyo-Ki'
end

if charindex('Arsene',@lista) > 0 and charindex('Anzu',@lista) > 0 and charindex('Ishtar',@lista) > 0 and charindex('Satan',@lista) > 0 and charindex('Lucifer',@lista) > 0 and charindex('Michael',@lista) > 0
begin
	insert into aux.fusao_especial
	select 'Arsene + Anzu + Ishtar + Satan + Lucifer + Michael', * from dim.persona where name = 'Satanael'
end

if charindex('Isis',@lista) > 0 and charindex('Thoth',@lista) > 0 and charindex('Anubis',@lista) > 0 and charindex('Horus',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Isis + Thoth + Anubis + Horus',* from dim.persona where name = 'Seth'
end

if charindex('Rangda',@lista) > 0 and charindex('Barong',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Rangda + Barong', * from dim.persona where name = 'Shiva'
end

if charindex('Mitra',@lista) > 0 and charindex('Mithras',@lista) > 0 and charindex('Melchizeked',@lista) > 0  and charindex('Lilith',@lista) > 0  and charindex('Gabriel',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Mitra+ Mithras + Melchizked + Lilith + Gabriel',* from dim.persona where name = 'Sraosha'
end

if charindex('Power',@lista) > 0 and charindex('Melchizedek',@lista) > 0 and charindex('Dominion',@lista) > 0  
begin
	insert into aux.fusao_especial
	select 'Power + Melchizedek + Dominion', * from dim.persona where name = 'Throne'
end

if charindex('White Rider',@lista) > 0 and charindex('Red Rider',@lista) > 0 and charindex('Black Rider',@lista) > 0  and charindex('Pale Rider',@lista) > 0  
begin
	insert into aux.fusao_especial
	select 'White Rider + Red RIder + Black Rider + Pale Rider', * from dim.persona where name = 'Trumpeter'
end

if charindex('Naga',@lista) > 0 and charindex('Raja Naga',@lista) > 0 and charindex('Ananta',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Naga + Raja Naga + Ananta', * from dim.persona where name = 'Vasuki'
end

if charindex('Okuninushi',@lista) > 0 and charindex('Shiki-Ouji',@lista) > 0 and charindex('Arahabaki',@lista) > 0 and charindex('Yatagarasu',@lista) > 0 and charindex('Futsunushi',@lista) > 0 
begin
	insert into aux.fusao_especial
	select 'Okunisushi + Shiki-Ouji + Arahabaki + Yatagarasu + Futsunushi', * from dim.persona where name = 'Yoshitsune'
end


select		a.source
		,	a.name
		,	a.arcana
		,	a.level
		,	a.strenght
		,	a.magic
		,	a.endurance
		,	a.agility
		,	a.luck	
		,	a.physical
		,	a.gun
		,	a.fire
		,	a.ice
		,	a.electric
		,	a.wind
		,	a.psychic
		,	a.nuclear
		,	a.bless
		,	a.curse
		,	concat( a.skill_1, '(',a.level_1,'), ', a.skill_2, '(',a.level_2,'), ', a.skill_3, '(',a.level_3,'), ', a.skill_4, '(',a.level_4,'), ', a.skill_5, '(',a.level_5,'), ', a.skill_6, '(',a.level_6,'), ', a.skill_7, '(',a.level_7,'), ', a.skill_8, '(',a.level_8,')')
	from	aux.fusao_especial a








