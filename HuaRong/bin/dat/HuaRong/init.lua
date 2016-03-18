function init( ... )
	
	chapter = GetChapter()

	local Index = 0
	SetChapterName(Index, "指挥若定")	Index = Index+1
	SetChapterName(Index, "横刀立马")	Index = Index+1
	SetChapterName(Index, "将拥曹营")	Index = Index+1
	SetChapterName(Index, "齐头并进")	Index = Index+1
	SetChapterName(Index, "兵分三路")	Index = Index+1
	SetChapterName(Index, "雨声渐沥")	Index = Index+1
	SetChapterName(Index, "左右布兵")	Index = Index+1
	SetChapterName(Index, "桃花园中")	Index = Index+1
	SetChapterName(Index, "一路进军")	Index = Index+1
	SetChapterName(Index, "一路顺风")	Index = Index+1
	SetChapterName(Index, "围而不歼")	Index = Index+1
	SetChapterName(Index, "捷足先登")	Index = Index+1
	SetChapterName(Index, "插翅难飞")	Index = Index+1
	SetChapterName(Index, "守口如瓶1")	Index = Index+1
	SetChapterName(Index, "守口如瓶2")	Index = Index+1
	SetChapterName(Index, "双将难挡")  	Index = Index+1
	SetChapterName(Index, "横马当关")	  Index = Index+1
	SetChapterName(Index, "层层设防1")	Index = Index+1
	SetChapterName(Index, "层层设防2")	Index = Index+1
	SetChapterName(Index, "兵挡将阻")	  Index = Index+1
	
	SetChapterName(Index, "堵塞要道")	Index = Index+1
	SetChapterName(Index, "瓮中之鳖")	Index = Index+1
	SetChapterName(Index, "层峦叠嶂")	Index = Index+1
	SetChapterName(Index, "水泄不通")	Index = Index+1
	SetChapterName(Index, "四路进兵")	Index = Index+1
	SetChapterName(Index, "入地无门")	Index = Index+1
	SetChapterName(Index, "勇闯五关")	Index = Index+1
	SetChapterName(Index, "四面楚歌")	Index = Index+1
	SetChapterName(Index, "前呼后拥")	Index = Index+1
	SetChapterName(Index, "兵临曹营")	Index = Index+1
	
	SetChapterName(Index, "五将逼宫")	Index = Index+1
	SetChapterName(Index, "前挡后阻")	Index = Index+1
	SetChapterName(Index, "走投无路")	Index = Index+1
	SetChapterName(Index, "近在咫尺")	Index = Index+1
	SetChapterName(Index, "小燕出巢")	Index = Index+1
	SetChapterName(Index, "比翼横空")	Index = Index+1
	SetChapterName(Index, "夹道藏兵")	Index = Index+1
	SetChapterName(Index, "屯兵东路")	Index = Index+1
	SetChapterName(Index, "四将连关")	Index = Index+1
	SetChapterName(Index, "峰回路转")	Index = Index+1
	if chapter == 0 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 2, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 1, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 2, 3, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 3, 1, 2, 0)	-- 赵云
		Add("ZhangFei.png", 3, 3, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 赵云
	elseif chapter == 1 then		
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 4, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 1, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 2, 1, 2, 0)	-- 赵云
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 2 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 1, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 1, 2, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 2, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 0, 4, 2, 1, 0)		-- 关羽
	elseif chapter == 3 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 1, 2, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 2, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 3, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
	elseif chapter == 4 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 1, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 1, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 0, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 3, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽	
	elseif chapter == 5 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 1, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽		
	elseif chapter == 6 then  --左右布兵
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 1, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 1, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 2, 2, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽		
	elseif chapter == 7 then  --桃花园中
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 2, 2, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 1, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽				
	elseif chapter == 8 then --一路进军
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 1, 2, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 2, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽		
	elseif chapter == 9 then --一路顺风
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 1, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 1, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 2, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽		
		
	elseif chapter == 10 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 2, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 1, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 2, 3, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3
	elseif chapter == 11 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 3, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 3, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 2, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 3, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 1, 1, 1, 0)		-- 兵3
	elseif chapter == 12 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 3, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 3, 3, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 2, 2, 1, 1, 0)		-- 兵3	
	elseif chapter == 13 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 1, 2, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 0, 4, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3	
	elseif chapter == 14 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 1, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 1, 2, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 0, 4, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3	
	elseif chapter == 15 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 2, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 3, 2, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 0, 4, 1, 1, 0)		-- 兵3	
	elseif chapter == 16 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("HuangZhong.png", 1, 3, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3	
	elseif chapter == 17 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 1, 2, 2, 1, 0)	-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3	
	elseif chapter == 18 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 1, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 1, 2, 2, 1, 0)	-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3	
	elseif chapter == 19 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 1, 2, 2, 1, 0)	-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 3, 1, 1, 0)		-- 兵3	
		
  elseif chapter == 20 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 2, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 2, 2, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 1, 1, 1, 0)		-- 兵3	
  elseif chapter == 21 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 0, 2, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3	
	 elseif chapter == 22 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3	
	 elseif chapter == 23 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 3, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3	
	elseif chapter == 24 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 0, 4, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 1, 1, 1, 0)		-- 兵3	
	elseif chapter == 25 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 2, 1, 1, 0)		-- 兵3	
	elseif chapter == 26 then 
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 0, 1, 1, 1, 0)		-- 兵3
	elseif chapter == 27 then
		Add("CaoCao.png", 1, 1, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 0, 3, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 1, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 2, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 0, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 3, 0, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
	elseif chapter == 28 then 
		Add("CaoCao.png", 2, 0, 2, 2, 1)		-- 曹操
		Add("GuanYu.png", 0, 1, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 1, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
	elseif chapter == 29 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 3, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 1, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 2, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 1, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 30 then
		Add("CaoCao.png", 1, 1, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 1, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("GuanYu.png", 0, 0, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 0, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		elseif chapter == 31 then
		Add("CaoCao.png", 0, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 1, 2, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 3, 1, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 2, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 2, 3, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 2, 1, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 2, 0, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 1, 4, 2, 1, 0)		-- 关羽
		elseif chapter == 32 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 4, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 2, 3, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 2, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 1, 2, 1, 2, 0)		-- 张飞
		Add("ZhangFei.png", 3, 2, 1, 2, 0)		-- 张飞
		elseif chapter == 33 then
		Add("CaoCao.png", 2, 3, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 1, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 2, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 1, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 2, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 2, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 3, 0, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 3, 2, 1, 0)		-- 关羽
	elseif chapter == 34 then
		Add("CaoCao.png", 1, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("GuanYu.png", 0, 2, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 35 then
		Add("CaoCao.png", 2, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 3, 3, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 0, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 2, 4, 1, 1, 0)		-- 兵3
		Add("GuanYu.png", 0, 0, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 0, 1, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 36 then
		Add("CaoCao.png", 0, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 3, 0, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 2, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 0, 4, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 1, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 4, 1, 1, 0)		-- 兵3
		Add("GuanYu.png", 0, 3, 2, 1, 0)	  -- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 3, 2, 1, 0)		-- 关羽
	elseif chapter == 37 then
		Add("CaoCao.png", 0, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 2, 0, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 2, 2, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 2, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 3, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 3, 2, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 0, 3, 1, 2, 0)	-- 黄忠
		Add("ZhangFei.png", 1, 3, 1, 2, 0)		-- 张飞
		Add("GuanYu.png", 0, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 38 then
		Add("CaoCao.png", 0, 0, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 0, 2, 1, 2, 0)		-- 赵云
		Add("GuanYu.png", 2, 0, 2, 1, 0)		-- 关羽
		Add("Soldier0.png", 2, 3, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 3, 3, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 3, 4, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 0, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 1, 2, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 2, 1, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 2, 2, 1, 0)		-- 关羽
	elseif chapter == 39 then
		Add("CaoCao.png", 0, 1, 2, 2, 1)		-- 曹操
		Add("ZhaoYun.png", 2, 1, 1, 2, 0)		-- 赵云
		Add("MaChao.png", 3, 0, 1, 2, 0)		-- 马超
		Add("Soldier0.png", 0, 0, 1, 1, 0)		-- 兵0
		Add("Soldier1.png", 1, 0, 1, 1, 0)		-- 兵1
		Add("Soldier2.png", 2, 0, 1, 1, 0)		-- 兵2
		Add("Soldier3.png", 1, 4, 1, 1, 0)		-- 兵3
		Add("HuangZhong.png", 3, 2, 1, 2, 0)	-- 黄忠
		Add("GuanYu.png", 1, 3, 2, 1, 0)		-- 关羽
		Add("GuanYu.png", 2, 4, 2, 1, 0)		-- 关羽
	end
	AddOutlet("", 4, 1, 1, 1, 0)			-- 设置出口的第一个点
	AddOutlet("", 4, 2, 1, 1, 0)			-- 设置出口的第二个点
end

init()