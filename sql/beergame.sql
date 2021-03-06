SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Scenario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Scenario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[F_Order] [int] NOT NULL,
	[F_Delivery] [int] NOT NULL,
	[D_Order] [int] NOT NULL,
	[D_Delivery] [int] NOT NULL,
	[W_Order] [int] NOT NULL,
	[W_Delivery] [int] NOT NULL,
	[R_Order] [int] NOT NULL,
	[R_Delivery] [int] NOT NULL,
	[IsSale] [int] NOT NULL,
	[IsStock] [int] NOT NULL,
	[StockCost] [int] NOT NULL,
	[ShortCost] [int] NOT NULL,
	[Yield] [float] NOT NULL,
 CONSTRAINT [PK_Scenario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單週期最小值為1,交貨週期最小值為0 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'情境名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'F_Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工廠訂單週期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'F_Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'F_Delivery'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工廠交貨週期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'F_Delivery'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'D_Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配銷商訂單周期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'D_Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'D_Delivery'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配銷商交貨周期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'D_Delivery'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'W_Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大盤商訂單周期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'W_Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'W_Delivery'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大盤商交貨週期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'W_Delivery'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'R_Order'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零售商訂單周期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'R_Order'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'R_Delivery'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零售商交貨週期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'R_Delivery'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'IsSale'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否提供銷售資訊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'IsSale'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'IsStock'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否提供存貨資訊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'IsStock'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'StockCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'庫存成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'StockCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'ShortCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缺貨成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'ShortCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Scenario', N'COLUMN',N'Yield'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'良率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Scenario', @level2type=N'COLUMN',@level2name=N'Yield'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[Mail] [varchar](max) NULL,
	[Memo] [varchar](max) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'Password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員密碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'Mail'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Mail'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'Memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Account', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色類型 0:未指定(NA) 1:工廠(F) 2:配銷商(D) 3:大盤商(W) 4:零售商(R)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Type'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GameList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GameList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Class] [varchar](max) NULL,
	[Scenario_ID] [int] NULL,
	[Supply_Amount] [int] NULL,
	[Memo] [varchar](max) NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_GameList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'遊戲編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'遊戲名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'Class'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參與班級' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'Class'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'Scenario_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'情境編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'Scenario_ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'Supply_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供應鏈數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'Supply_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'Memo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'遊戲備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'Memo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameList', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'遊戲狀態（是否啟動）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameList', @level2type=N'COLUMN',@level2name=N'State'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marketing_Request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Marketing_Request](
	[Scenario_ID] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Contents] [varchar](max) NULL,
	[Tip_Week] [int] NULL,
 CONSTRAINT [PK_Marketing_Request] PRIMARY KEY CLUSTERED 
(
	[Scenario_ID] ASC,
	[Week] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Marketing_Request', N'COLUMN',N'Scenario_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'情境編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marketing_Request', @level2type=N'COLUMN',@level2name=N'Scenario_ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Marketing_Request', N'COLUMN',N'Week'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'週數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marketing_Request', @level2type=N'COLUMN',@level2name=N'Week'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Marketing_Request', N'COLUMN',N'Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marketing_Request', @level2type=N'COLUMN',@level2name=N'Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Marketing_Request', N'COLUMN',N'Contents'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件敘述內容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marketing_Request', @level2type=N'COLUMN',@level2name=N'Contents'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Marketing_Request', N'COLUMN',N'Tip_Week'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件提示週數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marketing_Request', @level2type=N'COLUMN',@level2name=N'Tip_Week'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupplyChain]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupplyChain](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[G_ID] [int] NULL,
	[ChainNum] [int] NULL,
	[A_ID] [int] NULL,
 CONSTRAINT [PK_SupplyChain] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SupplyChain', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyChain', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SupplyChain', N'COLUMN',N'G_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'遊戲編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyChain', @level2type=N'COLUMN',@level2name=N'G_ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SupplyChain', N'COLUMN',N'ChainNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供應鏈編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyChain', @level2type=N'COLUMN',@level2name=N'ChainNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'SupplyChain', N'COLUMN',N'A_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會員編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyChain', @level2type=N'COLUMN',@level2name=N'A_ID'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GameRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GameRecord](
	[Supply_ID] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[Arrive_Amount] [int] NULL,
	[Stock_Amount] [int] NULL,
	[Request_Amount] [int] NULL,
	[Order_Amount] [int] NULL,
	[Cost_Amount] [int] NULL,
	[Send_Amount] [int] NULL,
	[Total_Cost] [int] NULL,
	[Total_Short] [int] NULL,
	[Synchron] [varchar](50) NULL,
 CONSTRAINT [PK_GameRecord] PRIMARY KEY CLUSTERED 
(
	[Supply_ID] ASC,
	[Week] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Supply_ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供應鏈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Supply_ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Week'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'週數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Week'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Arrive_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到貨數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Arrive_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Stock_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'庫存數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Stock_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Request_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要求數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Request_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Order_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訂單數量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Order_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Cost_Amount'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'當期成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Cost_Amount'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Total_Cost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本累計' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Total_Cost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GameRecord', N'COLUMN',N'Total_Short'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'總共缺多少貨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GameRecord', @level2type=N'COLUMN',@level2name=N'Total_Short'
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GameList_GameList]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameList]'))
ALTER TABLE [dbo].[GameList]  WITH CHECK ADD  CONSTRAINT [FK_GameList_GameList] FOREIGN KEY([Scenario_ID])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[GameList] CHECK CONSTRAINT [FK_GameList_GameList]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Marketing_Request_Scenario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Marketing_Request]'))
ALTER TABLE [dbo].[Marketing_Request]  WITH CHECK ADD  CONSTRAINT [FK_Marketing_Request_Scenario] FOREIGN KEY([Scenario_ID])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[Marketing_Request] CHECK CONSTRAINT [FK_Marketing_Request_Scenario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SupplyChain_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupplyChain]'))
ALTER TABLE [dbo].[SupplyChain]  WITH CHECK ADD  CONSTRAINT [FK_SupplyChain_Account] FOREIGN KEY([A_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[SupplyChain] CHECK CONSTRAINT [FK_SupplyChain_Account]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SupplyChain_GameList]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupplyChain]'))
ALTER TABLE [dbo].[SupplyChain]  WITH CHECK ADD  CONSTRAINT [FK_SupplyChain_GameList] FOREIGN KEY([G_ID])
REFERENCES [dbo].[GameList] ([ID])
GO
ALTER TABLE [dbo].[SupplyChain] CHECK CONSTRAINT [FK_SupplyChain_GameList]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GameRecord_SupplyChain]') AND parent_object_id = OBJECT_ID(N'[dbo].[GameRecord]'))
ALTER TABLE [dbo].[GameRecord]  WITH CHECK ADD  CONSTRAINT [FK_GameRecord_SupplyChain] FOREIGN KEY([Supply_ID])
REFERENCES [dbo].[SupplyChain] ([ID])
GO
ALTER TABLE [dbo].[GameRecord] CHECK CONSTRAINT [FK_GameRecord_SupplyChain]
