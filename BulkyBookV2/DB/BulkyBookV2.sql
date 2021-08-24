USE [BulkyBookV2]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b', N'Company Customer', N'COMPANY CUSTOMER', N'be26114d-1693-4746-8570-45511193089c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6825c99c-c37c-470a-b015-3a7806e42de2', N'Employee', N'EMPLOYEE', N'6a8f09ad-0f6f-4e04-b316-6dbad9c46f10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'83b602cf-2b46-45ef-8e76-c55e90f50edd', N'Admin', N'ADMIN', N'3244ff5d-424a-4b35-bc29-bdcf83589582')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8a79dcac-4bf9-4cf6-8260-1e3ee23b8fe9', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'a4bdd1cf-556f-4f85-9a7c-8e03cd2821bd')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (1, N'Authorized Company', N'Deido', N'Baham', N'Cameroun', N'00237', N'690557493', 1)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (2, N'Unauthorized Company', N'Bependa', N'Douala', N'Cameroun', N'00237', N'698856235', 0)
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'kodjouarmand@live.com', N'KODJOUARMAND@LIVE.COM', N'kodjouarmand@live.com', N'KODJOUARMAND@LIVE.COM', 0, N'AQAAAAEAACcQAAAAEAKMit+0WEYtIiDNgQ6EC41naeov1C3/cq4mElRvLVuRMlzANmQR1x/M+DEH0SwAjg==', N'4SRY4YTV6ZNFSN77GDREPO63BDX6HU2S', N'df1ca46f-9445-4957-973e-3a29a0e90b31', NULL, 0, 0, NULL, 1, 0, NULL, 1, N'ApplicationUser', N'Company employee', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'c87d3b5f-1983-4dca-b8f5-7fd09852dc93', N'kodjouarmand@outlook.com', N'KODJOUARMAND@OUTLOOK.COM', N'kodjouarmand@outlook.com', N'KODJOUARMAND@OUTLOOK.COM', 0, N'AQAAAAEAACcQAAAAEMOwJADhsldOk3rOcqEo/cCpM5XVJS/mdu2DZkChDErhVr08byp1pMwpiSlvf+qJUg==', N'XK6TXWRNTTE6J36AOXBKFMLK7NUXYYDP', N'd99a51d3-c4c1-4ee9-985a-fa5d31f30e14', N'955258745', 0, 0, NULL, 1, 0, NULL, 2, N'ApplicationUser', N'Unauthorized company customer (Outlook)', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'kodjouarmand@gmail.com', N'KODJOUARMAND@GMAIL.COM', N'kodjouarmand@gmail.com', N'KODJOUARMAND@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDNcfeuQ92lQinZSCi8JcgCEal+KQR9ZAHZG6QnR9l0pxg7t3+D7rxLDQCThJcd0pg==', N'7DPTFHUAUFI3RR6K4QIPO2NP5RTWJ4MU', N'c624cffd-b202-4397-be39-6905cb2d7445', N'699885577', 0, 0, NULL, 1, 0, N'Baham', 1, N'ApplicationUser', N'Authorized company customer (Gmail)', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'f86398ae-0af1-4acb-adea-cb188dbbc8db', N'armand.kamdem.dev@gmail.com', N'armand.kamdem.dev@gmail.com', N'armand.kamdem.dev@gmail.com', N'armand.kamdem.dev@gmail.com', 1, N'AQAAAAEAACcQAAAAEHQ1GoFGBfVRWVrFP3ZqUj7ncNYrhGyKw4fWFdqckQWZRR2tA/UBYUoNFwiJfz/rnA==', N'W4MDNDNVPH3323TRCKG4LFVH7OZHSYAJ', N'73aa4740-a525-4165-8a28-0b934177751e', N'699663322', 0, 0, NULL, 1, 0, N'Douala', NULL, N'ApplicationUser', N'Administrator', NULL, N'Cameroun', N'Deido')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c87d3b5f-1983-4dca-b8f5-7fd09852dc93', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'6825c99c-c37c-470a-b015-3a7806e42de2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'6825c99c-c37c-470a-b015-3a7806e42de2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f86398ae-0af1-4acb-adea-cb188dbbc8db', N'83b602cf-2b46-45ef-8e76-c55e90f50edd')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Novel')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Romance')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Action')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (1, N'Soft')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'Hard')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (1, N'Fortune of time', NULL, N'12356478', N'Armand kamdem', 50, 40, 30, 20, N'\images\products\1e0fcdc5-d45c-400f-b41d-e3d822880f38.png', 1, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (2, N'Symbol of the jungle', N'<p>A few day alone in the jungle</p>', N'123654789', N'Hulion Phantom', 100, 95, 80, 75, N'\images\products\f018367a-63d6-4f0d-8012-3b3b33e3b914.jpg', 1, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (3, N'The Spider man', N'<p>A book to talk about the legendary of the Spider man.</p>', N'987456321', N'Mare Cooks', 200, 150, 110, 90, N'\images\products\48ea7fc2-2266-4e31-b409-ac40b06d0509.png', 3, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (4, N'Vanish in sunset', N'<p>When Sunset make love</p>', N'852741963', N'Carole Ngakam', 55, 45, 35, 25, N'\images\products\9741e7ca-fd3e-4428-b6ee-106a3f7b4ddc.png', 2, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721115049_AddDefaultIdentityMigration', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721121339_AddCategoryToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721205147_ChangeCategoryKeyName', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721215538_AddCoverType', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721215841_AddCoverType2', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721220308_AddCoverType3', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721220335_AddStoredProceduresForCoverType', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210726134928_AddProductToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210727100047_AddApplicationUserAndCompanyToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210823103334_AddShoppingCartAndOrderModelAndRepository', N'5.0.8')
GO
