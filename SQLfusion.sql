USE [Persona5]
GO
/****** Object:  StoredProcedure [dbo].[fusao]    Script Date: 8/4/2020 12:26:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[fusao] (@source_1 varchar(250), @source_2 varchar(250))
AS

	declare @level_1 int = (select level from dim.persona where name = @source_1)
	declare @level_2 int = (select level from dim.persona where name = @source_2)

	declare @level_result decimal(10,2) = ceiling((@level_1 + @level_2)/2)+1

	declare @arcana_1 varchar(250) = (select arcana from dim.persona where name = @source_1)
	declare @arcana_2 varchar(250) = (select arcana from dim.persona where name = @source_2)


	declare @arcana_result varchar(250) = (select result from aux.fusion where source_1 = @arcana_1 and source_2 = @arcana_2)

	if @arcana_result is null 
	begin
		set @arcana_result = (select result from aux.fusion where source_2 = @arcana_1 and source_1 = @arcana_2)
	end

	if @arcana_result is null or @source_1 = @source_2
	begin
		return
	end

	if (@source_1 = 'Nebiros' and @source_2 = 'Belial') or (@source_1 = 'Belial' and @source_2 = 'Nebiros')
	begin
		return
	end

	if (@source_1 = 'Parvati' and @source_2 = 'Shiva') or (@source_1 = 'Shiva' and @source_2 = 'Parvati')
	begin
		return
	end

	if (@source_1 = 'Rangda' and @source_2 = 'Barong') or (@source_1 = 'Barong' and @source_2 = 'Rangda')
	begin
		return
	end

	else
	begin
	select top 1 @source_1 +' + '+@source_2 as source
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
	from	dim.persona a
	where	arcana = @arcana_result
	and		level >= @level_result
	order by ( level - @level_result ) 
	end



