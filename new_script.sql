USE [eZExtraction]
GO
/****** Object:  User [Abdul]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [Abdul] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [cdc]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [cdc] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[cdc]
GO
/****** Object:  User [Darshak]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [Darshak] FOR LOGIN [Darshak] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Dhruvi]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [Dhruvi] FOR LOGIN [Dhruvi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dkumbhani]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [dkumbhani] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Janak]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [Janak] FOR LOGIN [Janak] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kadir]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE USER [Kadir] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [cdc]
GO
ALTER ROLE [db_owner] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Darshak]
GO
ALTER ROLE [db_owner] ADD MEMBER [Dhruvi]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Dhruvi]
GO
/****** Object:  Schema [cdc]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE SCHEMA [cdc]
GO
/****** Object:  UserDefinedTableType [dbo].[MetadataField]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE TYPE [dbo].[MetadataField] AS TABLE(
	[MetadataColumnName] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UT_EmailMetadata]    Script Date: 4/3/2018 6:52:18 PM ******/
CREATE TYPE [dbo].[UT_EmailMetadata] AS TABLE(
	[AutoDocId] [bigint] NULL,
	[ProcessId] [int] NULL,
	[EMEntryUniversalID] [varchar](max) NULL,
	[EMAttachmentCount] [int] NULL,
	[EMAttachmentList] [varchar](max) NULL,
	[EMInternetMsgID] [varchar](max) NULL,
	[EMInternetMsgHeader] [varchar](max) NULL,
	[EMInternetCodepage] [int] NULL,
	[EMCreateDate] [datetime2](7) NULL,
	[EMLastModificationDate] [datetime2](7) NULL,
	[EMMsgRead] [bit] NULL,
	[EMUTCDate] [datetime2](7) NULL,
	[EMSentDate] [datetime2](7) NULL,
	[EMReceiveDate] [datetime2](7) NULL,
	[EMFrom] [varchar](254) NULL,
	[EMFromSMTP] [varchar](254) NULL,
	[EMTo] [varchar](max) NULL,
	[EMReplyTo] [varchar](max) NULL,
	[EMToSMTP] [varchar](max) NULL,
	[EMCc] [varchar](max) NULL,
	[EMCcSMTP] [varchar](max) NULL,
	[EMBcc] [varchar](max) NULL,
	[EMBccSMTP] [varchar](max) NULL,
	[EMSubject] [varchar](1000) NULL,
	[EMImportance] [int] NULL,
	[EMSensitivity] [int] NULL,
	[EMFamilyConvIndex] [varchar](max) NULL,
	[EMChildConvIndex] [varchar](max) NULL,
	[EMParentUnid] [int] NULL,
	[EMNoOFRecipients] [int] NULL,
	[EMAttachDisplayList] [varchar](max) NULL,
	[EMOnBehalfOf] [varchar](max) NULL,
	[EMOnBehalfOfSMTP] [varchar](max) NULL,
	[EMReceivedBy] [varchar](max) NULL,
	[EMReceivedBySMTP] [varchar](max) NULL,
	[EMMissedHiddenOLEAttachmentsCount] [int] NULL,
	[EMMissedHiddenOLEAttachmentsList] [varchar](max) NULL,
	[EMMessageCodepage] [varchar](max) NULL,
	[EMRtfCodepage] [varchar](max) NULL,
	[EMCodepageInUse] [varchar](max) NULL,
	[EMCategories] [varchar](max) NULL,
	[EMFlagStatus] [int] NULL,
	[EMExpiryDate] [datetime2](7) NULL,
	[EMResources] [varchar](max) NULL,
	[EMHasEmbeddedAttachments] [bit] NULL,
	[EMMailFormatType] [varchar](max) NULL,
	[EMReadReceipt] [bit] NULL,
	[EMDeliveryReceipt] [varchar](max) NULL,
	[EMConvertToLocale] [varchar](max) NULL,
	[EMExtractedHiddenOLEAttachmentsList] [varchar](max) NULL,
	[EMZArchiveInternetRecipents] [varchar](max) NULL,
	[EMConversationIndex] [varchar](max) NULL,
	[EMIsBodyencrypted] [bit] NULL,
	[EMInReplyTo] [varchar](max) NULL,
	[EMType] [varchar](max) NULL,
	[EMInternetReferences] [varchar](max) NULL,
	[EMActivityCalendarType] [varchar](max) NULL,
	[EMCompany] [varchar](max) NULL,
	[EMActivityDuration] [int] NULL,
	[EMActivityActivityAcName] [varchar](max) NULL,
	[EMActivityActivityPhase] [varchar](max) NULL,
	[EMActivityActivityKey] [varchar](max) NULL,
	[EMCalendarChair] [varchar](max) NULL,
	[EMCalendarLocation] [varchar](max) NULL,
	[EMCalendarRecurrence] [varchar](max) NULL,
	[EMCalendarRecurrencePattern] [varchar](max) NULL,
	[EMCalMeetingTaskStatus] [varchar](max) NULL,
	[EMContactName] [varchar](max) NULL,
	[EMContactAddress] [varchar](max) NULL,
	[EMContactFax] [varchar](max) NULL,
	[EMContactPhone] [varchar](max) NULL,
	[EMContacts] [varchar](max) NULL,
	[EMContactDetails] [varchar](max) NULL,
	[EMContactEmail] [varchar](max) NULL,
	[EMContactDepartment] [varchar](max) NULL,
	[EMContactOfficeName] [varchar](max) NULL,
	[EMContactProfession] [varchar](max) NULL,
	[EMContactJobTitle] [varchar](max) NULL,
	[EMDistListDistributionListName] [varchar](max) NULL,
	[EMDistListMemebers] [varchar](max) NULL,
	[EMPostConversation] [varchar](max) NULL,
	[EMStartDateTime] [datetime2](7) NULL,
	[EMEndDateTime] [datetime2](7) NULL,
	[EMTaskDueDateTime] [datetime2](7) NULL,
	[EMTaskCompleteDateTime] [datetime2](7) NULL,
	[EMTaskOwner] [varchar](max) NULL,
	[EMLastModifiedBy] [varchar](max) NULL,
	[EMDocAppName] [varchar](max) NULL,
	[EMContactComments] [varchar](max) NULL,
	[EMContactLocation] [varchar](max) NULL,
	[EMReplyType] [varchar](max) NULL,
	[EMReplyTime] [varchar](max) NULL,
	[EMExtractedHiddenOLEAttachmentsCount] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UT_FolderDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
CREATE TYPE [dbo].[UT_FolderDetail] AS TABLE(
	[FolderName] [varchar](260) NULL,
	[FolderPath] [varchar](max) NULL,
	[FolderEntryId] [varchar](max) NULL,
	[MessageCount] [int] NULL,
	[FolderStatus] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UT_MessageDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
CREATE TYPE [dbo].[UT_MessageDetail] AS TABLE(
	[MessageEntryId] [varchar](max) NULL,
	[FolderId] [int] NULL,
	[MessageStatus] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[VerticalToHorizontal]    Script Date: 4/3/2018 6:52:19 PM ******/
CREATE TYPE [dbo].[VerticalToHorizontal] AS TABLE(
	[Verticaldata] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[uftn_HorizontalToVertical]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[uftn_HorizontalToVertical](@data VARCHAR(100))
RETURNS @tbl TABLE
(
	Data1 VARCHAR(100)
)
AS 
BEGIN
		INSERT INTO @tbl
		SELECT VALUE
		FROM STRING_SPLIT(@data,',');
	RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[utfn_VerticalToHorizontal]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[utfn_VerticalToHorizontal](@VerticalData VerticalToHorizontal readonly)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @HorizontalData varchar(MAX) = ''
	SELECT @HorizontalData = STUFF((SELECT ',' + VerticalData
		FROM(SELECT VerticalData FROM @VerticalData) AS field
		FOR XML PATH(''),TYPE).value('.','varchar(max)'),1,1,'')
	RETURN @HorizontalData
END

GO
/****** Object:  Table [dbo].[AlertCategoryMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertCategoryMaster](
	[AlertCategoryId] [tinyint] NOT NULL,
	[AlertCategoryName] [varchar](50) NULL,
	[ModuleId] [tinyint] NULL,
 CONSTRAINT [PK_AlertCategoryMaster_AlertCategoryId] PRIMARY KEY CLUSTERED 
(
	[AlertCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[AnnouncementId] [int] NOT NULL,
	[AnnouncementMessage] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Announcement_AnnouncementId] PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationMaster](
	[ApplicationId] [tinyint] NOT NULL,
	[ApplicationName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ApplicationMaster_ApplicationId] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLS_MD5Hash]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLS_MD5Hash](
	[HASH_MD5] [varchar](50) NOT NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[HashVersion] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColumnDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColumnDetail](
	[ColumnDetailId] [int] NOT NULL,
	[ColumnName] [varchar](50) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_ColumnDetail_ColumnDetailId] PRIMARY KEY CLUSTERED 
(
	[ColumnDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_ColumnDetail_ColumnName] UNIQUE NONCLUSTERED 
(
	[ColumnName] ASC,
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustodianMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustodianMaster](
	[CustodianId] [int] NOT NULL,
	[CustodianName] [varchar](30) NULL,
 CONSTRAINT [PK_CustodianMaster_CustodianId] PRIMARY KEY CLUSTERED 
(
	[CustodianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomMetadataField]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomMetadataField](
	[CustomMetadataFieldId] [int] NOT NULL,
	[CustomColumnName] [varchar](50) NOT NULL,
	[Datatype] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CustomMetadata_CustomMetadataFieldId] PRIMARY KEY CLUSTERED 
(
	[CustomMetadataFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CustomMetadataField_CustomColumnName] UNIQUE NONCLUSTERED 
(
	[CustomColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Edem]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edem](
	[AutoDocId] [bigint] NOT NULL,
	[AutoParentId] [bigint] NULL,
	[AutoFamilyId] [bigint] NULL,
	[ProcessId] [int] NULL,
	[InventoryId] [int] NULL,
	[InventoryFileId] [bigint] NULL,
	[DocId] [varchar](20) NULL,
	[JobId] [int] NULL,
	[CustodianId] [int] NULL,
	[FilterDate] [datetime2](7) NULL,
	[OriginalFolderPath] [varchar](max) NOT NULL,
	[OriginalFileName] [varchar](50) NOT NULL,
	[OriginalFileExtension] [varchar](10) NOT NULL,
	[OriginalFileSize] [bigint] NOT NULL,
	[OriginalFileType] [tinyint] NULL,
	[FileExtensionToUse] [varchar](25) NULL,
	[NativeFolderPath] [varchar](max) NULL,
	[NativeFileName] [varchar](100) NULL,
	[TextFileSize] [bigint] NULL,
	[NoOfChildren] [int] NULL,
	[DocHashValueMD5] [varchar](33) NULL,
	[DocHashValueSHA] [varchar](65) NULL,
	[BodySHA] [varchar](65) NULL,
	[ZipChildCount] [int] NULL,
	[ZipComments] [varchar](200) NULL,
	[DocPassword] [varchar](100) NULL,
	[UnZippedBy] [tinyint] NULL,
	[EmbeddedExtractionCount] [int] NULL,
	[IsEmbeddedPresent] [bit] NULL,
	[IsReadOnly] [bit] NULL,
	[FileExtensionId] [tinyint] NULL,
	[InsertedByApplicationId] [tinyint] NULL,
	[FilterDateCreatedFrom] [varchar](20) NULL,
	[CreateDate] [datetime2](7) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
	[LastAccessedDate] [datetime2](7) NULL,
	[EM_FolderPath] [varchar](max) NULL,
	[EM_Folder] [varchar](100) NULL,
 CONSTRAINT [PK_Edem_AutoDocId] PRIMARY KEY CLUSTERED 
(
	[AutoDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Edem_DocId] UNIQUE NONCLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EdocMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdocMetadata](
	[AutoDocId] [bigint] NOT NULL,
	[ProcessId] [int] NULL,
	[DocCreationDate] [datetime2](7) NULL,
	[DocModifiedDate] [datetime2](7) NULL,
	[DocLastAccessDate] [datetime2](7) NULL,
	[DocLastPrintDate] [datetime2](7) NULL,
	[DocTitle] [varchar](50) NULL,
	[DocSubject] [varchar](50) NULL,
	[DocAuthor] [varchar](50) NULL,
	[DocManager] [varchar](50) NULL,
	[DocCompany] [varchar](100) NULL,
	[DocCategory] [varchar](50) NULL,
	[DocKeyWords] [varchar](max) NULL,
	[DocComment] [varchar](max) NULL,
	[DocLastAuthor] [varchar](50) NULL,
	[DocRevisionNo] [int] NULL,
	[DocAppname] [varchar](50) NULL,
	[DocPageCount] [int] NULL,
	[DocNumberofSlides] [int] NULL,
	[DocNumberofNotes] [int] NULL,
	[DocNumberofHiddenSlides] [int] NULL,
	[DocHasSpeakerNotes] [bit] NULL,
	[DocVersion] [varchar](30) NULL,
	[DocCreator] [varchar](50) NULL,
	[DocHasPassword] [bit] NULL,
	[DocHasUserPassword] [bit] NULL,
	[DocIsEncrypted] [bit] NULL,
	[DocHasTrackChanges] [bit] NULL,
	[DocHasTrackChangesEnable] [bit] NULL,
	[DocShowRevisionEnable] [bit] NULL,
	[DocHasPrintedRivisonEnables] [bit] NULL,
	[DocHasHiddenRowColumns] [bit] NULL,
	[DocHasHiddenSlides] [bit] NULL,
	[DocHasProtectedSheet] [bit] NULL,
	[DocUTCDate] [datetime2](7) NULL,
	[DocSpeakerComments] [varchar](max) NULL,
	[DocHeaderFooterInformation] [varchar](max) NULL,
	[HasHeader] [bit] NULL,
	[HasFooter] [bit] NULL,
	[ProtectedSheetsName] [varchar](max) NULL,
	[ExcelMoreThanNPages] [int] NULL,
	[HiddenSheetsName] [varchar](max) NULL,
	[AudioLanguage] [varchar](30) NULL,
	[StreamFormat] [varchar](max) NULL,
	[Duration] [varchar](15) NULL,
	[DocUserComments] [varchar](max) NULL,
	[DocNativeRedactionLimitationInfo] [varchar](max) NULL,
 CONSTRAINT [PK_EdocMetadata_AutoDocId] PRIMARY KEY CLUSTERED 
(
	[AutoDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMetadata](
	[AutoDocId] [bigint] NOT NULL,
	[ProcessId] [int] NULL,
	[EMEntryUniversalID] [varchar](max) NULL,
	[EMAttachmentCount] [int] NULL,
	[EMAttachmentList] [varchar](max) NULL,
	[EMInternetMsgID] [varchar](max) NULL,
	[EMInternetMsgHeader] [varchar](max) NULL,
	[EMInternetCodepage] [int] NULL,
	[EMCreateDate] [datetime2](7) NULL,
	[EMLastModificationDate] [datetime2](7) NULL,
	[EMMsgRead] [bit] NULL,
	[EMUTCDate] [datetime2](7) NULL,
	[EMSentDate] [datetime2](7) NULL,
	[EMReceiveDate] [datetime2](7) NULL,
	[EMFrom] [varchar](254) NULL,
	[EMFromSMTP] [varchar](254) NULL,
	[EMTo] [varchar](max) NULL,
	[EMReplyTo] [varchar](max) NULL,
	[EMToSMTP] [varchar](max) NULL,
	[EMCc] [varchar](max) NULL,
	[EMCcSMTP] [varchar](max) NULL,
	[EMBcc] [varchar](max) NULL,
	[EMBccSMTP] [varchar](max) NULL,
	[EMSubject] [varchar](1000) NULL,
	[EMImportance] [int] NULL,
	[EMSensitivity] [int] NULL,
	[EMFamilyConvIndex] [varchar](max) NULL,
	[EMChildConvIndex] [varchar](max) NULL,
	[EMParentUnid] [int] NULL,
	[EMNoOFRecipients] [int] NULL,
	[EMAttachDisplayList] [varchar](max) NULL,
	[EMOnBehalfOf] [varchar](max) NULL,
	[EMOnBehalfOfSMTP] [varchar](max) NULL,
	[EMReceivedBy] [varchar](max) NULL,
	[EMReceivedBySMTP] [varchar](max) NULL,
	[EMMissedHiddenOLEAttachmentsCount] [int] NULL,
	[EMMissedHiddenOLEAttachmentsList] [varchar](max) NULL,
	[EMMessageCodepage] [varchar](max) NULL,
	[EMRtfCodepage] [varchar](max) NULL,
	[EMCodepageInUse] [varchar](max) NULL,
	[EMCategories] [varchar](max) NULL,
	[EMFlagStatus] [int] NULL,
	[EMExpiryDate] [datetime2](7) NULL,
	[EMResources] [varchar](max) NULL,
	[EMHasEmbeddedAttachments] [bit] NULL,
	[EMMailFormatType] [varchar](max) NULL,
	[EMReadReceipt] [bit] NULL,
	[EMDeliveryReceipt] [varchar](max) NULL,
	[EMConvertToLocale] [varchar](max) NULL,
	[EMExtractedHiddenOLEAttachmentsList] [varchar](max) NULL,
	[EMZArchiveInternetRecipents] [varchar](max) NULL,
	[EMConversationIndex] [varchar](max) NULL,
	[EMIsBodyencrypted] [bit] NULL,
	[EMInReplyTo] [varchar](max) NULL,
	[EMType] [varchar](max) NULL,
	[EMInternetReferences] [varchar](max) NULL,
	[EMActivityCalendarType] [varchar](max) NULL,
	[EMCompany] [varchar](max) NULL,
	[EMActivityDuration] [int] NULL,
	[EMActivityActivityAcName] [varchar](max) NULL,
	[EMActivityActivityPhase] [varchar](max) NULL,
	[EMActivityActivityKey] [varchar](max) NULL,
	[EMCalendarChair] [varchar](max) NULL,
	[EMCalendarLocation] [varchar](max) NULL,
	[EMCalendarRecurrence] [varchar](max) NULL,
	[EMCalendarRecurrencePattern] [varchar](max) NULL,
	[EMCalMeetingTaskStatus] [varchar](max) NULL,
	[EMContactName] [varchar](max) NULL,
	[EMContactAddress] [varchar](max) NULL,
	[EMContactFax] [varchar](max) NULL,
	[EMContactPhone] [varchar](max) NULL,
	[EMContacts] [varchar](max) NULL,
	[EMContactDetails] [varchar](max) NULL,
	[EMContactEmail] [varchar](max) NULL,
	[EMContactDepartment] [varchar](max) NULL,
	[EMContactOfficeName] [varchar](max) NULL,
	[EMContactProfession] [varchar](max) NULL,
	[EMContactJobTitle] [varchar](max) NULL,
	[EMDistListDistributionListName] [varchar](max) NULL,
	[EMDistListMemebers] [varchar](max) NULL,
	[EMPostConversation] [varchar](max) NULL,
	[EMStartDateTime] [datetime2](7) NULL,
	[EMEndDateTime] [datetime2](7) NULL,
	[EMTaskDueDateTime] [datetime2](7) NULL,
	[EMTaskCompleteDateTime] [datetime2](7) NULL,
	[EMTaskOwner] [varchar](max) NULL,
	[EMLastModifiedBy] [varchar](max) NULL,
	[EMDocAppName] [varchar](max) NULL,
	[EMContactComments] [varchar](max) NULL,
	[EMContactLocation] [varchar](max) NULL,
	[EMReplyType] [varchar](max) NULL,
	[EMReplyTime] [varchar](max) NULL,
	[EMExtractedHiddenOLEAttachmentsCount] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ErrorInfo]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorInfo](
	[AutoDocId] [bigint] NOT NULL,
	[ProcessId] [int] NULL,
	[ErrorId] [tinyint] NULL,
	[ApplicationId] [tinyint] NULL,
 CONSTRAINT [PK_ErrorInfo_AutoDocId] PRIMARY KEY CLUSTERED 
(
	[AutoDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ErrorMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorMaster](
	[ErrorId] [tinyint] NOT NULL,
	[ErrorType] [varchar](250) NULL,
 CONSTRAINT [PK_ErrorMaster_ErrorId] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventMaster](
	[EventId] [int] NOT NULL,
	[EventName] [varchar](50) NULL,
	[AlertCategoryId] [tinyint] NULL,
 CONSTRAINT [PK_EventMaster_EventId] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileExtensionMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileExtensionMaster](
	[FileExtensionId] [tinyint] NOT NULL,
	[Extension] [varchar](25) NOT NULL,
	[FileTypeId] [tinyint] NULL,
	[MetadataExtractionStatus] [tinyint] NULL,
	[AttachmentExtractionStatus] [tinyint] NULL,
	[ZipStatus] [tinyint] NULL,
	[EmbeddedStatus] [tinyint] NULL,
	[TextExtractionStatus] [tinyint] NULL,
 CONSTRAINT [PK_FileExtensionMaster_FileExtensionId] PRIMARY KEY CLUSTERED 
(
	[FileExtensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_FileExtensionMaster_Extension] UNIQUE NONCLUSTERED 
(
	[Extension] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileTypeMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileTypeMaster](
	[FileTypeId] [tinyint] NOT NULL,
	[FileType] [varchar](20) NOT NULL,
 CONSTRAINT [PK_FileTypeMaster_FileTypeId] PRIMARY KEY CLUSTERED 
(
	[FileTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FolderDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderDetail](
	[FolderId] [int] NOT NULL,
	[FolderName] [varchar](260) NULL,
	[FolderPath] [varchar](max) NULL,
	[FolderEntryId] [varchar](max) NULL,
	[MessageCount] [int] NULL,
	[FolderStatus] [int] NULL,
 CONSTRAINT [PK_FolderDetail_FolderDetailId] PRIMARY KEY CLUSTERED 
(
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HierarchyTableMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HierarchyTableMaster](
	[TableId] [int] NOT NULL,
	[TableName] [varchar](50) NULL,
 CONSTRAINT [PK_HierarchyTableMaster_TableId] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_HierarchyTableMaster_TableName] UNIQUE NONCLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryFile]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryFile](
	[InventoryFileId] [bigint] NOT NULL,
	[OriginalFileName] [varchar](50) NOT NULL,
	[DocId] [varchar](20) NULL,
	[OriginalFileExtension] [varchar](25) NOT NULL,
	[FileExtensionToUse] [varchar](25) NULL,
	[OriginalFileType] [tinyint] NULL,
	[OriginalFolderPath] [varchar](max) NOT NULL,
	[NativeFolderPath] [varchar](max) NULL,
	[NativeFileName] [varchar](100) NULL,
	[OriginalFileSize] [int] NOT NULL,
	[FileCreatedDate] [datetime2](7) NOT NULL,
	[FileLastModifiedDate] [datetime2](7) NOT NULL,
	[FileLastAccessedDate] [datetime2](7) NOT NULL,
	[IsReadOnly] [bit] NOT NULL,
	[IsError] [bit] NOT NULL,
	[ErrorComment] [varchar](max) NULL,
	[ParentInventoryFileId] [bigint] NULL,
	[FamilyInventoryFileId] [bigint] NULL,
	[ParentDocId] [varchar](20) NULL,
	[FamilyDocId] [varchar](20) NULL,
	[FileExtensionId] [tinyint] NULL,
	[InventoryId] [int] NULL,
	[DenistingStatus] [tinyint] NULL,
	[StellentStatus] [tinyint] NULL,
	[DeDuplicationStatus] [tinyint] NULL,
	[CopyStatus] [tinyint] NULL,
	[MetadataExtractionStatus] [tinyint] NULL,
	[DocHashValueMD5] [varchar](33) NULL,
	[DocHashValueSHA] [varchar](65) NULL,
	[FileExtensionFilter] [tinyint] NULL,
	[FolderFilter] [tinyint] NULL,
	[AutoDocId] [int] NULL,
	[MasterToProcess] [bit] NULL,
	[JobId] [int] NULL,
	[CustodianId] [int] NULL,
	[Comments] [varchar](max) NULL,
 CONSTRAINT [PK_InventoryFile_InventoryFileId] PRIMARY KEY CLUSTERED 
(
	[InventoryFileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_InventoryFile_DocId] UNIQUE NONCLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryMaster](
	[InventoryId] [int] NOT NULL,
	[InventoryName] [varchar](20) NOT NULL,
	[InventoryPath] [varchar](max) NOT NULL,
	[OutputInventoryPath] [varchar](max) NOT NULL,
	[CreationTime] [datetime2](7) NULL,
	[CreatedBy] [int] NULL,
	[InitialInventoryStatus] [tinyint] NULL,
	[DenistingStatus] [tinyint] NULL,
	[StellentStatus] [tinyint] NULL,
	[DeDuplicationStatus] [tinyint] NULL,
	[CopyStatus] [tinyint] NULL,
	[MetadataExtractionStatus] [tinyint] NULL,
	[MigrateToEdemStatus] [tinyint] NULL,
	[InventoryStatus] [tinyint] NULL,
	[CustodianId] [int] NULL,
	[JobId] [int] NULL,
	[Comments] [varchar](max) NULL,
 CONSTRAINT [PK_InventoryMaster_InventoryId] PRIMARY KEY CLUSTERED 
(
	[InventoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobMaster](
	[JobId] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[CreatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_JobMaster_JobId] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Layout]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Layout](
	[LayoutId] [int] NOT NULL,
	[UserId] [int] NULL,
	[ColumnIdList] [varchar](50) NULL,
 CONSTRAINT [PK_Layout_LayoutId] PRIMARY KEY CLUSTERED 
(
	[LayoutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessageDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageDetail](
	[MessageDetailId] [int] NOT NULL,
	[MessageEntryId] [varchar](max) NULL,
	[FolderId] [int] NULL,
	[MessageStatus] [int] NULL,
 CONSTRAINT [PK_MessageDetail_MessageDetailId] PRIMARY KEY CLUSTERED 
(
	[MessageDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleMaster](
	[ModuleId] [tinyint] NOT NULL,
	[ModuleName] [varchar](50) NULL,
 CONSTRAINT [PK_ModuleMaster_ModuleId] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessAudit]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessAudit](
	[ProcessAuditId] [int] NOT NULL,
	[MachineName] [varchar](30) NOT NULL,
	[MachineIP] [varchar](15) NULL,
	[ApplicationId] [tinyint] NULL,
	[ApplicationStartTime] [datetime2](7) NULL,
	[ApplicationEndTime] [datetime2](7) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_ProcessAudit_ProcessAuditId] PRIMARY KEY CLUSTERED 
(
	[ProcessAuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessMaster](
	[ProcessId] [int] NOT NULL,
	[InventoryId] [int] NULL,
	[CustodianId] [int] NULL,
	[JobId] [int] NULL,
	[DataLoc] [tinyint] NULL,
	[ProcessConfig] [varchar](max) NULL,
	[TextExtractionStatus] [tinyint] NULL,
	[EmbeddedStatus] [tinyint] NULL,
	[AttachmentExtractionStatus] [tinyint] NULL,
	[ZipStatus] [tinyint] NULL,
	[MetadataExtractionStatus] [tinyint] NULL,
	[PSTInitializationStatus] [tinyint] NULL,
	[SaveAsMSGStatus] [tinyint] NULL,
	[RelativePath] [varchar](max) NULL,
	[Comments] [varchar](max) NULL,
	[RunningApplicationId] [tinyint] NULL,
	[CreatedTime] [datetime2](7) NULL,
	[LastUpdatedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_ProcessMaster_ProcessId] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProcessStatus]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessStatus](
	[AutoDocId] [bigint] NOT NULL,
	[AutoFamilyId] [bigint] NULL,
	[ProcessId] [int] NULL,
	[MasterToProcess] [bit] NULL,
	[MetadataExtractionStatus] [tinyint] NULL,
	[AttachmentExtractionStatus] [tinyint] NULL,
	[ZipStatus] [tinyint] NULL,
	[EmbeddedStatus] [tinyint] NULL,
	[TextExtractionStatus] [tinyint] NULL,
	[ProcessAuditId] [int] NULL,
	[ProcessAuditTrail] [varchar](20) NULL,
 CONSTRAINT [PK_ProcessStatus_AutoDocId] PRIMARY KEY CLUSTERED 
(
	[AutoDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReferenceTableDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceTableDetail](
	[ReferenceTableDetailId] [int] NOT NULL,
	[ParentTableName] [varchar](50) NULL,
	[ParentColumnName] [varchar](50) NULL,
	[ReferencingTableName] [varchar](50) NULL,
	[ReferencingColumnName] [varchar](50) NULL,
	[JoinType] [varchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequestMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestMaster](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[InventoryId] [int] NULL,
	[ProcessConfig] [varchar](max) NULL,
	[CreationTime] [datetime2](7) NULL,
	[IPAddress] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [tinyint] NOT NULL,
	[RoleName] [varchar](15) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_RoleMaster_RoleId] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Path] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusInformationMaster]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusInformationMaster](
	[StatusId] [tinyint] NOT NULL,
	[StatusName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_StatusInformation_StatusId] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[SubscriptionId] [int] NOT NULL,
	[EventId] [int] NULL,
	[UserId] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Subscription_SubscriptionId] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](15) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NOT NULL,
	[UserPassword] [varchar](70) NOT NULL,
	[EmailId] [varchar](60) NOT NULL,
	[UserContact] [varchar](15) NOT NULL,
	[DomainName] [varchar](20) NULL,
	[EncryptionKey] [varchar](6) NOT NULL,
	[ExpirationOfPassword] [datetime2](7) NOT NULL,
	[IsResetPassword] [bit] NULL,
	[LastPasswordChange] [datetime2](7) NULL,
	[AttemptInvalidPassword] [tinyint] NULL,
	[LastInvalidAttemptTime] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[IsLocked] [bit] NULL,
	[RoleId] [tinyint] NULL,
 CONSTRAINT [PK_UserLogin_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_UserLogin_EmailId] UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_UserLogin_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLoginAudit]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginAudit](
	[UserLoginAuditId] [int] NOT NULL,
	[UserId] [int] NULL,
	[LoginTimeStamp] [datetime2](7) NOT NULL,
	[LogoutTimeStamp] [datetime2](7) NULL,
	[IPConf] [varchar](45) NOT NULL,
	[BrowserSetting] [varchar](max) NOT NULL,
 CONSTRAINT [PK_UserLoginAudit_UserLoginAuditId] PRIMARY KEY CLUSTERED 
(
	[UserLoginAuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ZipApplication]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipApplication](
	[ZipApplicationId] [tinyint] NOT NULL,
	[ZipApplication] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ZipApplication_ZipApplicationId] PRIMARY KEY CLUSTERED 
(
	[ZipApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AlertCategoryMaster] ADD  DEFAULT (NEXT VALUE FOR [SqAlertCategoryId]) FOR [AlertCategoryId]
GO
ALTER TABLE [dbo].[Announcement] ADD  DEFAULT (NEXT VALUE FOR [SqAnnouncementId]) FOR [AnnouncementId]
GO
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Announcement] ADD  CONSTRAINT [DF_Announcement_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ColumnDetail] ADD  CONSTRAINT [DF_ColumnDetail_ColumnDetailId]  DEFAULT (NEXT VALUE FOR [SqColumnDetailId]) FOR [ColumnDetailId]
GO
ALTER TABLE [dbo].[CustodianMaster] ADD  DEFAULT (NEXT VALUE FOR [SqCustodianId]) FOR [CustodianId]
GO
ALTER TABLE [dbo].[CustomMetadataField] ADD  CONSTRAINT [DF_CustomMetadata_CustomMetadataFieldId]  DEFAULT (NEXT VALUE FOR [SqCustomMetadataFieldId]) FOR [CustomMetadataFieldId]
GO
ALTER TABLE [dbo].[Edem] ADD  CONSTRAINT [DF_Edem_AutoDocId]  DEFAULT (NEXT VALUE FOR [SqAutoDocId]) FOR [AutoDocId]
GO
ALTER TABLE [dbo].[EventMaster] ADD  DEFAULT (NEXT VALUE FOR [SqEventId]) FOR [EventId]
GO
ALTER TABLE [dbo].[FileExtensionMaster] ADD  CONSTRAINT [DF_FileExtensionMaster_FileExtensionId]  DEFAULT (NEXT VALUE FOR [SqFileExtensionId]) FOR [FileExtensionId]
GO
ALTER TABLE [dbo].[FolderDetail] ADD  CONSTRAINT [DF_FolderDetail_FolderId]  DEFAULT (NEXT VALUE FOR [SqFolderId]) FOR [FolderId]
GO
ALTER TABLE [dbo].[HierarchyTableMaster] ADD  CONSTRAINT [DF_HierarchyTableMaster_TableId_SqTableId]  DEFAULT (NEXT VALUE FOR [SqTableId]) FOR [TableId]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_InventoryFileId]  DEFAULT (NEXT VALUE FOR [SqInventoryFileId]) FOR [InventoryFileId]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_DenistingStatus]  DEFAULT ((1)) FOR [DenistingStatus]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_StellentStatus]  DEFAULT ((0)) FOR [StellentStatus]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_DeDuplicationStatus]  DEFAULT ((0)) FOR [DeDuplicationStatus]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_CopyStatus]  DEFAULT ((0)) FOR [CopyStatus]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_MetadataExtractionStatus]  DEFAULT ((0)) FOR [MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_FileExtensionFilter]  DEFAULT ((19)) FOR [FileExtensionFilter]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_FolderFilter]  DEFAULT ((19)) FOR [FolderFilter]
GO
ALTER TABLE [dbo].[InventoryFile] ADD  CONSTRAINT [DF_InventoryFile_MasterToProcess]  DEFAULT ((1)) FOR [MasterToProcess]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_InventoryId]  DEFAULT (NEXT VALUE FOR [SqInventoryId]) FOR [InventoryId]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_CreationTime]  DEFAULT (getdate()) FOR [CreationTime]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_InitialInventoryStatus]  DEFAULT ((1)) FOR [InitialInventoryStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_DenistingStatus]  DEFAULT ((1)) FOR [DenistingStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_StellentStatus]  DEFAULT ((0)) FOR [StellentStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_DeDuplicationStatus]  DEFAULT ((0)) FOR [DeDuplicationStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_CopyStatus]  DEFAULT ((0)) FOR [CopyStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_MetadataExtractionStatus]  DEFAULT ((0)) FOR [MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_InventoryMaster_MigrateToEdemStatus]  DEFAULT ((0)) FOR [MigrateToEdemStatus]
GO
ALTER TABLE [dbo].[InventoryMaster] ADD  CONSTRAINT [DF_Inventory_InventoryStatus]  DEFAULT ((0)) FOR [InventoryStatus]
GO
ALTER TABLE [dbo].[JobMaster] ADD  CONSTRAINT [DF_JobMaster_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Layout] ADD  CONSTRAINT [DF_Layout_LayoutId]  DEFAULT (NEXT VALUE FOR [SqLayoutId]) FOR [LayoutId]
GO
ALTER TABLE [dbo].[MessageDetail] ADD  CONSTRAINT [DF_MessageDetail_MessageDetailId]  DEFAULT (NEXT VALUE FOR [SqMessageDetailId]) FOR [MessageDetailId]
GO
ALTER TABLE [dbo].[ModuleMaster] ADD  DEFAULT (NEXT VALUE FOR [SqModuleId]) FOR [ModuleId]
GO
ALTER TABLE [dbo].[ProcessAudit] ADD  CONSTRAINT [DF_ProcessAudit_ProcessAuditId]  DEFAULT (NEXT VALUE FOR [SqProcessAuditId]) FOR [ProcessAuditId]
GO
ALTER TABLE [dbo].[ProcessMaster] ADD  CONSTRAINT [DF_ProcessMaster_ProcessId]  DEFAULT (NEXT VALUE FOR [SqProcessId]) FOR [ProcessId]
GO
ALTER TABLE [dbo].[ReferenceTableDetail] ADD  CONSTRAINT [DF_ReferenceTableDetail_ReferenceTableDetailId_SqReferenceTableDetailId]  DEFAULT (NEXT VALUE FOR [SqReferenceTableDetailId]) FOR [ReferenceTableDetailId]
GO
ALTER TABLE [dbo].[RoleMaster] ADD  DEFAULT (NEXT VALUE FOR [SqRoleId]) FOR [RoleId]
GO
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [DF_RoleMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Subscription] ADD  DEFAULT (NEXT VALUE FOR [SqSubscriptionId]) FOR [SubscriptionId]
GO
ALTER TABLE [dbo].[Subscription] ADD  CONSTRAINT [DF_Subscription_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT (NEXT VALUE FOR [SqUserId]) FOR [UserId]
GO
ALTER TABLE [dbo].[UserLogin] ADD  CONSTRAINT [DF_UserLogin_IsResetPassword]  DEFAULT ((0)) FOR [IsResetPassword]
GO
ALTER TABLE [dbo].[UserLogin] ADD  CONSTRAINT [DF_UserLogin_AttemptPassword]  DEFAULT ((0)) FOR [AttemptInvalidPassword]
GO
ALTER TABLE [dbo].[UserLogin] ADD  CONSTRAINT [DF_UserLogin_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserLogin] ADD  CONSTRAINT [DF_UserLogin_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[UserLoginAudit] ADD  DEFAULT (NEXT VALUE FOR [SqUserLoginAuditId]) FOR [UserLoginAuditId]
GO
ALTER TABLE [dbo].[AlertCategoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_ModuleMaster_AlertCategoryMaster_ModuleId] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[ModuleMaster] ([ModuleId])
GO
ALTER TABLE [dbo].[AlertCategoryMaster] CHECK CONSTRAINT [FK_ModuleMaster_AlertCategoryMaster_ModuleId]
GO
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_UserLogin_UserId_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_UserLogin_UserId_CreatedBy]
GO
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_UserLogin_UserId_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_UserLogin_UserId_UpdatedBy]
GO
ALTER TABLE [dbo].[ColumnDetail]  WITH CHECK ADD  CONSTRAINT [FK_HierarchyTableMaster_ColumnDetail_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[HierarchyTableMaster] ([TableId])
GO
ALTER TABLE [dbo].[ColumnDetail] CHECK CONSTRAINT [FK_HierarchyTableMaster_ColumnDetail_TableId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationMaster_Edem_ApplicationId] FOREIGN KEY([InsertedByApplicationId])
REFERENCES [dbo].[ApplicationMaster] ([ApplicationId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_ApplicationMaster_Edem_ApplicationId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_CustodianMaster_Edem_CustodianId] FOREIGN KEY([CustodianId])
REFERENCES [dbo].[CustodianMaster] ([CustodianId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_CustodianMaster_Edem_CustodianId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_Edem_AutoDocId_AutoFamilyId] FOREIGN KEY([AutoFamilyId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_Edem_AutoDocId_AutoFamilyId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_Edem_AutoDocId_AutoParentId] FOREIGN KEY([AutoParentId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_Edem_AutoDocId_AutoParentId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_Extension_Edem_ExtensionId] FOREIGN KEY([FileExtensionId])
REFERENCES [dbo].[FileExtensionMaster] ([FileExtensionId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_Extension_Edem_ExtensionId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_FileTypeMaster_Edem_FileTypeId_OriginalFileType] FOREIGN KEY([OriginalFileType])
REFERENCES [dbo].[FileTypeMaster] ([FileTypeId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_FileTypeMaster_Edem_FileTypeId_OriginalFileType]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_InventoryFile_Edem_InventoryFileId] FOREIGN KEY([InventoryFileId])
REFERENCES [dbo].[InventoryFile] ([InventoryFileId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_InventoryFile_Edem_InventoryFileId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMaster_Edem_InventoryId] FOREIGN KEY([InventoryId])
REFERENCES [dbo].[InventoryMaster] ([InventoryId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_InventoryMaster_Edem_InventoryId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_JobMaster_Edem_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[JobMaster] ([JobId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_JobMaster_Edem_JobId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_ProcessMaster_Edem_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[ProcessMaster] ([ProcessId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_ProcessMaster_Edem_ProcessId]
GO
ALTER TABLE [dbo].[Edem]  WITH CHECK ADD  CONSTRAINT [FK_ZipApplication_Edem_ZipApplicationId] FOREIGN KEY([UnZippedBy])
REFERENCES [dbo].[ZipApplication] ([ZipApplicationId])
GO
ALTER TABLE [dbo].[Edem] CHECK CONSTRAINT [FK_ZipApplication_Edem_ZipApplicationId]
GO
ALTER TABLE [dbo].[EdocMetadata]  WITH CHECK ADD  CONSTRAINT [FK_Edem_EdocMetadata_AutoDocId] FOREIGN KEY([AutoDocId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[EdocMetadata] CHECK CONSTRAINT [FK_Edem_EdocMetadata_AutoDocId]
GO
ALTER TABLE [dbo].[EdocMetadata]  WITH CHECK ADD  CONSTRAINT [FK_ProcessMaster_EdocMetadata_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[ProcessMaster] ([ProcessId])
GO
ALTER TABLE [dbo].[EdocMetadata] CHECK CONSTRAINT [FK_ProcessMaster_EdocMetadata_ProcessId]
GO
ALTER TABLE [dbo].[EmailMetadata]  WITH CHECK ADD  CONSTRAINT [FK_Edem_EmailMetadata_AutoDocId] FOREIGN KEY([AutoDocId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[EmailMetadata] CHECK CONSTRAINT [FK_Edem_EmailMetadata_AutoDocId]
GO
ALTER TABLE [dbo].[EmailMetadata]  WITH CHECK ADD  CONSTRAINT [FK_ProcessMaster_EmailMetadata_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[ProcessMaster] ([ProcessId])
GO
ALTER TABLE [dbo].[EmailMetadata] CHECK CONSTRAINT [FK_ProcessMaster_EmailMetadata_ProcessId]
GO
ALTER TABLE [dbo].[ErrorInfo]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationMaster_ErrorInfo_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[ApplicationMaster] ([ApplicationId])
GO
ALTER TABLE [dbo].[ErrorInfo] CHECK CONSTRAINT [FK_ApplicationMaster_ErrorInfo_ApplicationId]
GO
ALTER TABLE [dbo].[ErrorInfo]  WITH CHECK ADD  CONSTRAINT [FK_Edem_ErrorInfo_AutoDocId] FOREIGN KEY([AutoDocId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[ErrorInfo] CHECK CONSTRAINT [FK_Edem_ErrorInfo_AutoDocId]
GO
ALTER TABLE [dbo].[ErrorInfo]  WITH CHECK ADD  CONSTRAINT [FK_ErrorMaster_ErrorInfo_ErrorId] FOREIGN KEY([ErrorId])
REFERENCES [dbo].[ErrorMaster] ([ErrorId])
GO
ALTER TABLE [dbo].[ErrorInfo] CHECK CONSTRAINT [FK_ErrorMaster_ErrorInfo_ErrorId]
GO
ALTER TABLE [dbo].[ErrorInfo]  WITH CHECK ADD  CONSTRAINT [FK_ProcessMaster_ErrorInfo_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[ProcessMaster] ([ProcessId])
GO
ALTER TABLE [dbo].[ErrorInfo] CHECK CONSTRAINT [FK_ProcessMaster_ErrorInfo_ProcessId]
GO
ALTER TABLE [dbo].[EventMaster]  WITH CHECK ADD  CONSTRAINT [FK_AlertCategoryMaster_EventMaster_AlertCategoryId] FOREIGN KEY([AlertCategoryId])
REFERENCES [dbo].[AlertCategoryMaster] ([AlertCategoryId])
GO
ALTER TABLE [dbo].[EventMaster] CHECK CONSTRAINT [FK_AlertCategoryMaster_EventMaster_AlertCategoryId]
GO
ALTER TABLE [dbo].[FileExtensionMaster]  WITH CHECK ADD  CONSTRAINT [FK_FileTypeMaster_FileExtensionMaster_FileTypeId] FOREIGN KEY([FileTypeId])
REFERENCES [dbo].[FileTypeMaster] ([FileTypeId])
GO
ALTER TABLE [dbo].[FileExtensionMaster] CHECK CONSTRAINT [FK_FileTypeMaster_FileExtensionMaster_FileTypeId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_CustodianMaster_InventoryFile_CustodianId] FOREIGN KEY([CustodianId])
REFERENCES [dbo].[CustodianMaster] ([CustodianId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_CustodianMaster_InventoryFile_CustodianId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_FileExtensionMaster_InventoryFile_FileExtensionId] FOREIGN KEY([FileExtensionId])
REFERENCES [dbo].[FileExtensionMaster] ([FileExtensionId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_FileExtensionMaster_InventoryFile_FileExtensionId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_FileTypeMaster_InventoryFile_FileTypeId_OriginalFileType] FOREIGN KEY([OriginalFileType])
REFERENCES [dbo].[FileTypeMaster] ([FileTypeId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_FileTypeMaster_InventoryFile_FileTypeId_OriginalFileType]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_InventoryFile_DocId_FamilyDocId] FOREIGN KEY([FamilyDocId])
REFERENCES [dbo].[InventoryFile] ([DocId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_InventoryFile_DocId_FamilyDocId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_InventoryFile_DocId_ParentDocId] FOREIGN KEY([ParentDocId])
REFERENCES [dbo].[InventoryFile] ([DocId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_InventoryFile_DocId_ParentDocId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_InventoryFile_InventoryFileId_FamilyInventoryFileId] FOREIGN KEY([FamilyInventoryFileId])
REFERENCES [dbo].[InventoryFile] ([InventoryFileId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_InventoryFile_InventoryFileId_FamilyInventoryFileId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_InventoryFile_InventoryFileId_ParentInventoryFileId] FOREIGN KEY([ParentInventoryFileId])
REFERENCES [dbo].[InventoryFile] ([InventoryFileId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_InventoryFile_InventoryFileId_ParentInventoryFileId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMaster_InventoryFile_InventoryId] FOREIGN KEY([InventoryId])
REFERENCES [dbo].[InventoryMaster] ([InventoryId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_InventoryMaster_InventoryFile_InventoryId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_JobMaster_InventoryFile_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[JobMaster] ([JobId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_JobMaster_InventoryFile_JobId]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryFile_CopyStatus] FOREIGN KEY([CopyStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryFile_CopyStatus]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryFile_DeDuplicationStatus] FOREIGN KEY([DeDuplicationStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryFile_DeDuplicationStatus]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryFile_DenistingStatus] FOREIGN KEY([DenistingStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryFile_DenistingStatus]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryFile_MetadataExtractionStatus] FOREIGN KEY([MetadataExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryFile_MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[InventoryFile]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryFile_StellentStatus] FOREIGN KEY([StellentStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryFile] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryFile_StellentStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_CustodianMaster_InventoryMaster_CustodianId] FOREIGN KEY([CustodianId])
REFERENCES [dbo].[CustodianMaster] ([CustodianId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_CustodianMaster_InventoryMaster_CustodianId]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_JobMaster_InventoryMaster_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[JobMaster] ([JobId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_JobMaster_InventoryMaster_JobId]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_CopyStatus] FOREIGN KEY([CopyStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_CopyStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_DeDuplicationStatus] FOREIGN KEY([DeDuplicationStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_DeDuplicationStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_DenistingStatus] FOREIGN KEY([DenistingStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_DenistingStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_InitialInventoryStatus] FOREIGN KEY([InitialInventoryStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_InitialInventoryStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_InventoryStatus] FOREIGN KEY([InventoryStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_InventoryStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_MetadataExtractionStatus] FOREIGN KEY([MetadataExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_MigrateToEdemStatus] FOREIGN KEY([MigrateToEdemStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_MigrateToEdemStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_StellentStatus] FOREIGN KEY([StellentStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_InventoryMaster_StellentStatus]
GO
ALTER TABLE [dbo].[InventoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_InventoryId_UserId_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[InventoryMaster] CHECK CONSTRAINT [FK_UserLogin_InventoryId_UserId_CreatedBy]
GO
ALTER TABLE [dbo].[Layout]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Layout_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[Layout] CHECK CONSTRAINT [FK_UserLogin_Layout_UserId]
GO
ALTER TABLE [dbo].[MessageDetail]  WITH CHECK ADD  CONSTRAINT [FK_FolderDetail_MessageDetail_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[FolderDetail] ([FolderId])
GO
ALTER TABLE [dbo].[MessageDetail] CHECK CONSTRAINT [FK_FolderDetail_MessageDetail_FolderId]
GO
ALTER TABLE [dbo].[ProcessAudit]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationMaster_ProcessAudit_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[ApplicationMaster] ([ApplicationId])
GO
ALTER TABLE [dbo].[ProcessAudit] CHECK CONSTRAINT [FK_ApplicationMaster_ProcessAudit_ApplicationId]
GO
ALTER TABLE [dbo].[ProcessAudit]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_ProcessAudit_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[ProcessAudit] CHECK CONSTRAINT [FK_UserLogin_ProcessAudit_UserId]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_CustodianMaster_ProcessMaster_CustodianId] FOREIGN KEY([CustodianId])
REFERENCES [dbo].[CustodianMaster] ([CustodianId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_CustodianMaster_ProcessMaster_CustodianId]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_InventoryMaster_ProcessMaster_InventoryId] FOREIGN KEY([InventoryId])
REFERENCES [dbo].[InventoryMaster] ([InventoryId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_InventoryMaster_ProcessMaster_InventoryId]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_JobMaster_ProcessMaster_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[JobMaster] ([JobId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_JobMaster_ProcessMaster_JobId]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_AttachmentExtractionStatus] FOREIGN KEY([AttachmentExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_AttachmentExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_EmbeddedStatus] FOREIGN KEY([EmbeddedStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_EmbeddedStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_MetadataExtractionStatus] FOREIGN KEY([MetadataExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_PSTInitializationStatus] FOREIGN KEY([PSTInitializationStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_PSTInitializationStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_SaveAsMSGStatus] FOREIGN KEY([SaveAsMSGStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_SaveAsMSGStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_TextExtractionStatus] FOREIGN KEY([TextExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_TextExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_ZipStatus] FOREIGN KEY([ZipStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessMaster] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessMaster_ZipStatus]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_Edem_ProcessStatus_AutoDocId] FOREIGN KEY([AutoDocId])
REFERENCES [dbo].[Edem] ([AutoDocId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_Edem_ProcessStatus_AutoDocId]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_ProcessAudit_ProcessStatus_ProcessAuditId] FOREIGN KEY([ProcessAuditId])
REFERENCES [dbo].[ProcessAudit] ([ProcessAuditId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_ProcessAudit_ProcessStatus_ProcessAuditId]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_ProcessMaster_ProcessStatus_ProcessId] FOREIGN KEY([ProcessId])
REFERENCES [dbo].[ProcessMaster] ([ProcessId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_ProcessMaster_ProcessStatus_ProcessId]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_AttachmentExtractionStatus] FOREIGN KEY([AttachmentExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_AttachmentExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_EmbeddedStatus] FOREIGN KEY([EmbeddedStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_EmbeddedStatus]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_MetadataExtractionStatus] FOREIGN KEY([MetadataExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_MetadataExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_TextExtractionStatus] FOREIGN KEY([TextExtractionStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_TextExtractionStatus]
GO
ALTER TABLE [dbo].[ProcessStatus]  WITH CHECK ADD  CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_ZipStatus] FOREIGN KEY([ZipStatus])
REFERENCES [dbo].[StatusInformationMaster] ([StatusId])
GO
ALTER TABLE [dbo].[ProcessStatus] CHECK CONSTRAINT [FK_StatusInformationMaster_ProcessStatus_ZipStatus]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_EventMaster_Subscription_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[EventMaster] ([EventId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_EventMaster_Subscription_EventId]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_Subscription_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_UserLogin_Subscription_UserId]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_RoleMaster_UserLogin_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleMaster] ([RoleId])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_RoleMaster_UserLogin_RoleId]
GO
ALTER TABLE [dbo].[UserLoginAudit]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_UserLoginAudit_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserLogin] ([UserId])
GO
ALTER TABLE [dbo].[UserLoginAudit] CHECK CONSTRAINT [FK_UserLogin_UserLoginAudit_UserId]
GO
/****** Object:  StoredProcedure [dbo].[usp_ChangeUserPassword]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- SP to reset password of user
CREATE   PROC [dbo].[usp_ChangeUserPassword]
	@UserId INT -- Foreign key of UserLogin
	,@UserPassword VARCHAR(70) -- Password by user
	,@EncryptionKey VARCHAR(6) -- Encryptionkey by user
AS
BEGIN
	-- change user password 
	UPDATE UserLogin
	SET UserPassword = @UserPassword
		,EncryptionKey = @EncryptionKey
		,LastPasswordChange = GETDATE()
		,ExpirationOfPassword = DATEADD(dd,15,GETDATE())
	WHERE UserId = @UserId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CheckUserNameUnique]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Check Username SP
CREATE   PROC [dbo].[usp_CheckUserNameUnique]
(
	@UserName VARCHAR(15)
	,@AvalibalityStatus BIT OUTPUT -- User name exists or not
)
AS
BEGIN
	-- if username exists then update AvailbalityStatus to 1
	SET @AvalibalityStatus = 0

	SELECT @AvalibalityStatus = 1
	FROM UserLogin
	WHERE UserName = @UserName
	
END


GO
/****** Object:  StoredProcedure [dbo].[usp_DynamicJoinQueryGenerator]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROC [dbo].[usp_DynamicJoinQueryGenerator]
	@userId INT
	,@JoinQuery NVARCHAR(MAX) OUTPUT
AS
BEGIN

	DECLARE @columnList VARCHAR(50) = NULL
	DECLARE @count INT = NULL
	DECLARE @flag INT = 0
	DECLARE @tableName VARCHAR(50) = NULL
	DECLARE @createdDate DATETIME = NULL	
	DECLARE @qry NVARCHAR(MAX) = NULL
	DECLARE @qry1 NVARCHAR(MAX) = ''


	IF OBJECT_ID('tempdb..#selectedColumnTable') IS NOT NULL
	BEGIN
		DROP TABLE #selectedColumnTable
	END
	CREATE TABLE #selectedColumnTable 
	(
		TableId INT
		,TableName VARCHAR(50)
	)
	
	

	SELECT @columnList = ColumnIdList FROM Layout WHERE UserId =@userId;
	
	SET @qry = N'SELECT DISTINCT htm.TableId, htm.TableName
   				 FROM ColumnDetail cd
				 INNER JOIN HierarchyTableMaster htm
				 ON cd.TableId = htm.TableId 
				 WHERE cd.ColumnDetailId IN('+ @columnList +')
				 AND cd.TableId <> 7
				 ORDER BY htm.TableId'
	
	INSERT INTO #selectedColumnTable
	EXEC (@qry)
	
	-- #selectedTableHierarchy to store table with its own column and referencing column
	IF OBJECT_ID('tempdb..#dataForJoin') IS NOT NULL
	BEGIN
		DROP TABLE #dataForJoin
	END
	CREATE TABLE #dataForJoin
	(
		DataForJoin INT IDENTITY(1,1)
		,tablename VARCHAR(50)
		,pk_column VARCHAR(50)
		,fk_tablename VARCHAR(50)
		,fk_column VARCHAR(50)
		,JoinType VARCHAR(20)
	)	

	--SELECT TableName FROM #selectedColumnTable

	INSERT INTO #dataForJoin(tablename
							,pk_column
							,fk_tablename
							,fk_column
							,JoinType)
	SELECT DISTINCT ParentTableName 
		   ,ParentColumnName
		   ,ReferencingTableName
		   ,ReferencingColumnName 
		   ,JoinType
	FROM ReferenceTableDetail
	WHERE ParentTableName IN(SELECT TableName FROM #selectedColumnTable)
	AND ReferencingTableName IN(SELECT TableName FROM #selectedColumnTable)
	


	--SELECT * FROM #selectedColumnTable 
	--SELECT * FROM #dataForJoin 

	DECLARE @cnt INT = 0
	SELECT @cnt = COUNT(TableName) FROM #selectedColumnTable
	SET @qry = NULL
	DECLARE @ptblnm VARCHAR(50) = NULL
	DECLARE @ctblnm VARCHAR(50) = NULL
	DECLARE @pjoin VARCHAR(100) = NULL
	DECLARE @cjoin VARCHAR(100) = NULL
	DECLARE @joinType VARCHAR(20) = NULL

	SELECT TOP(1) @ptblnm = TableName FROM #selectedColumnTable
	SET @qry = @ptblnm

	DELETE TOP(1) FROM #selectedColumnTable

	WHILE @cnt > 1
	BEGIN
		SELECT TOP(1) @ctblnm = TableName FROM #selectedColumnTable
		SELECT TOP(1) @pjoin = tablename + '.' + pk_column
					  ,@cjoin = fk_tablename + '.' + fk_column 
					  ,@joinType = JoinType
		FROM #dataForJoin
		WHERE tablename = @ptblnm 
		AND fk_tablename = @ctblnm
		SET @qry = CONCAT(@qry , ' ' , @joinType , ' ' ,@ctblnm , ' ON ' , @cjoin , ' = ' , @pjoin)
		SET @ptblnm = @ctblnm

		DELETE TOP(1) FROM #selectedColumnTable
		SET @cnt = @cnt - 1
	END

	SET @JoinQuery = @qry

	DROP TABLE #dataForJoin
	DROP TABLE #selectedColumnTable
END


GO
/****** Object:  StoredProcedure [dbo].[usp_DynamicJoinQueryGenerator1]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROC [dbo].[usp_DynamicJoinQueryGenerator1]
	@userId INT
	,@JoinQuery NVARCHAR(MAX) OUTPUT
AS
BEGIN

	DECLARE @columnList VARCHAR(50) = NULL
	DECLARE @count INT = NULL
	DECLARE @flag INT = 0
	DECLARE @tableName VARCHAR(50) = NULL
	DECLARE @createdDate DATETIME = NULL	
	DECLARE @qry NVARCHAR(MAX) = NULL
	DECLARE @qry1 NVARCHAR(MAX) = ''


	IF OBJECT_ID('tempdb..#selectedColumnTable') IS NOT NULL
	BEGIN
		DROP TABLE #selectedColumnTable
	END
	CREATE TABLE #selectedColumnTable 
	(
		TableId INT
		,TableName VARCHAR(50)
	)
	
	

	SELECT @columnList = ColumnIdList FROM Layout WHERE UserId =@userId;
	
	SET @qry = N'SELECT DISTINCT htm.TableId, htm.TableName
   				 FROM ColumnDetail cd
				 INNER JOIN HierarchyTableMaster htm
				 ON cd.TableId = htm.TableId 
				 WHERE cd.ColumnDetailId IN('+ @columnList +')
				 ORDER BY htm.TableId'
	
	INSERT INTO #selectedColumnTable
	EXEC (@qry)

	
	-- #selectedTableHierarchy to store table with its own column and referencing column
	IF OBJECT_ID('tempdb..#dataForJoin') IS NOT NULL
	BEGIN
		DROP TABLE #dataForJoin
	END
	CREATE TABLE #dataForJoin
	(
		DataForJoin INT IDENTITY(1,1)
		,tablename VARCHAR(50)
		,pk_column VARCHAR(50)
		,fk_tablename VARCHAR(50)
		,fk_column VARCHAR(50)
		,JoinType VARCHAR(20)
	)	

	SELECT TableName FROM #selectedColumnTable

	INSERT INTO #dataForJoin(tablename
							,pk_column
							,fk_tablename
							,fk_column
							,JoinType)
	SELECT DISTINCT ParentTableName 
		   ,ParentColumnName
		   ,ReferencingTableName
		   ,ReferencingColumnName 
		   ,JoinType
	FROM ReferenceTableDetail
	WHERE ParentTableName IN(SELECT TableName FROM #selectedColumnTable)
	AND ReferencingTableName IN(SELECT TableName FROM #selectedColumnTable)
	


	SELECT * FROM #selectedColumnTable 
	SELECT * FROM #dataForJoin 

	DECLARE @cnt INT = 0
	SELECT @cnt = COUNT(TableName)-1 FROM #selectedColumnTable
	SET @qry = NULL
	DECLARE @ptblnm VARCHAR(50) = NULL
	DECLARE @ctblnm VARCHAR(50) = NULL
	DECLARE @pjoin VARCHAR(100) = NULL
	DECLARE @cjoin VARCHAR(100) = NULL
	DECLARE @joinType VARCHAR(20) = NULL

	SELECT TOP(1) @ptblnm = TableName FROM #selectedColumnTable
	SET @qry = @ptblnm

	DELETE TOP(1) FROM #selectedColumnTable

	WHILE @cnt > 0
	BEGIN
		SELECT TOP(1) @ctblnm = TableName FROM #selectedColumnTable
		SELECT TOP(1) @pjoin = tablename + '.' + pk_column
					  ,@cjoin = fk_tablename + '.' + fk_column 
					  ,@joinType = JoinType
		FROM #dataForJoin
		WHERE tablename = @ptblnm 
		AND fk_tablename = @ctblnm
		SET @qry = @qry + ' ' + @joinType + ' ' + @ctblnm + ' ON ' + @cjoin + ' = ' + @pjoin
		SET @ptblnm = @ctblnm

		DELETE TOP(1) FROM #selectedColumnTable
		SET @cnt = @cnt - 1
	END

	SELECT @qry






	--							,OBJECT_NAME(fc.parent_object_id) +'''+ '.' +'''+ COL_NAME(fc.parent_object_id,fc.parent_column_id) AS pk_column
	--							,OBJECT_NAME(fc.referenced_object_id) +'''+ '.' +'''+ COL_NAME(fc.referenced_object_id,fc.referenced_column_id) AS referenced_column_name  
	--					FROM sys.foreign_keys AS f  
	--					INNER JOIN sys.foreign_key_columns AS fc   
	--					   ON f.object_id = fc.constraint_object_id   
	--					WHERE f.parent_object_id = OBJECT_ID(''' + @tableName + ''')
	--					AND f.referenced_object_id <> OBJECT_ID(''' + @tableName + ''')AND f.referenced_object_id IN (SELECT DISTINCT OBJECT_ID(TableName) FROM #selectedColumnTable);'
	
	--AND ReferencingTableName IN (SELECT DISTINCT TableName FROM #selectedColumnTable) 
	--OR ReferencingTableName IN (SELECT DISTINCT TableName FROM #selectedColumnTable) IS NULL
	-- will iterate by count(table) available in #selectedColumnTable
	--WHILE @count > 0
	--BEGIN
	--	SELECT TOP 1 @tableName = TableName ,@createdDate = createddate FROM #selectedTableHierarchy ORDER BY createddate
			
	--		IF @flag = 0
	--		BEGIN
	--			INSERT INTO #dataForJoin(tablename) VALUES(@tableName)
	--			SET @flag = 1
	--		END

	--		SET @qry = N'INSERT INTO #dataForJoin 
	--					SELECT ''' + @tableName + '''
	--							,OBJECT_NAME(fc.parent_object_id) +'''+ '.' +'''+ COL_NAME(fc.parent_object_id,fc.parent_column_id) AS pk_column
	--							,OBJECT_NAME(fc.referenced_object_id) +'''+ '.' +'''+ COL_NAME(fc.referenced_object_id,fc.referenced_column_id) AS referenced_column_name  
	--					FROM sys.foreign_keys AS f  
	--					INNER JOIN sys.foreign_key_columns AS fc   
	--					   ON f.object_id = fc.constraint_object_id   
	--					WHERE f.parent_object_id = OBJECT_ID(''' + @tableName + ''')
	--					AND f.referenced_object_id <> OBJECT_ID(''' + @tableName + ''')AND f.referenced_object_id IN (SELECT DISTINCT OBJECT_ID(TableName) FROM #selectedColumnTable);'
		
	--	EXEC (@qry)
	--	DELETE TOP (1) FROM #selectedTableHierarchy WHERE TableName = @tableName
	--	SET @count = @count - 1

	--END


	--UPDATE dataForJoinDerived
	--		SET dataForJoinDerived.tablename = CASE WHEN dataForJoinDerived.RankByMD5 > 1 THEN NULL ELSE dataForJoinDerived.tablename END
	--		FROM
	--		(SELECT tablename	
	--				,row_number() OVER(PARTITION BY tablename 
	--								ORDER BY tablename) AS RankByMD5 
	--			FROM #dataForJoin) AS dataForJoinDerived 

	--SELECT TOP 1 @qry = tablename FROM #dataForJoin

	--DELETE TOP (1) FROM #dataForJoin WHERE TableName = @qry

	--SET @qry1 = ''
	--SELECT @qry1 = CONCAT(@qry1, CASE WHEN tablename IS NOT NULL THEN ' INNER JOIN ' + tablename + ' ON ' ELSE ' AND ' END, pk_column , ' = ' , fk_column) FROM #dataForJoin
	
	--SET @JoinQuery = @qry + @qry1

	DROP TABLE #dataForJoin
	DROP TABLE #selectedColumnTable
END


GO
/****** Object:  StoredProcedure [dbo].[usp_GetAlertForPasswordChange]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Alert user before 3 days to change password
CREATE   PROC [dbo].[usp_GetAlertForPasswordChange]
	@UserId INT -- Foreign Key of UserLogin
AS
BEGIN
	DECLARE @ExpirationDate DATETIME2 = NULL -- Store ExpirationOfPassword Date
	DECLARE @DayRemaining TINYINT = NULL -- Days remaining to change password
	SELECT @ExpirationDate = ExpirationOfPassword
	FROM UserLogin
	WHERE UserId = @UserId
	
	-- fetch remaining days to expire password
	SELECT @DayRemaining = DATEDIFF(DAY, GETDATE(), @ExpirationDate)

	IF @DayRemaining <= 3
		BEGIN 
			SELECT 'Last Date To Change Password is : ' + CAST((@ExpirationDate) AS VARCHAR(10));
		END
	 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_getChartData]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_getChartData]
@flag VARCHAR(25) 
AS
BEGIN
	IF(@flag='ExtensionChart')
	BEGIN
		SELECT TOP 10 OriginalFileExtension AS Extensions, COUNT_BIG(OriginalFileExtension) AS 'File Count'
		FROM EDEM
		GROUP BY OriginalFileExtension
		ORDER BY 'File Count' DESC
	END
	ELSE IF(@flag='AllDateChart')
	BEGIN
WITH Countdates AS
(
	SELECT LastModifiedDate [Date]
			   ,COUNT_BIG(AutoDocId) [LastModifiedCount]	
			   ,NULL [LastAccessedCount]
			   ,NULL [CreatedCount]
		FROM Edem
		GROUP BY LastModifiedDate

	UNION

		SELECT LastAccessedDate
			   ,NULL
			   ,COUNT_BIG(AutoDocId)
			   ,NULL
		FROM Edem
		GROUP BY LastAccessedDate

	UNION

		SELECT CreateDate
			   ,NULL
			   ,NULL
			   ,COUNT_BIG(AutoDocId)
		FROM Edem
		GROUP BY CreateDate
)

SELECT TOP 10 FORMAT(CONVERT(DATE,Date),'dd/MM/yyyy') AS [Date]
	   ,ISNULL(MAX(LastModifiedCount),0) [LastModifiedCount]	
	   ,ISNULL(MAX(LastAccessedCount),0) [LastAccessedCount]
	   ,ISNULL(MAX(CreatedCount),0) [CreateCount] 
FROM Countdates
GROUP BY CONVERT(DATE,Date)
ORDER BY CONVERT(DATE,Date) DESC

	END
	ELSE IF(@flag='FileStatusChart')
	BEGIN
		WITH cte(Category, Counts) as
		(
			SELECt 'Error', COUNT_BIG(InventoryFileId) FROM InventoryFile WHERE IsError=1
			UNION
			SELECT 'Completed', COUNT_BIG(InventoryFileId) FROM InventoryFile WHERE CopyStatus=5
			UNION 
			SELECT 'Duplicate', COUNT_BIG(InventoryFileId) FROM InventoryFile WHERE DeDuplicationStatus=20
			UNION 
			SELECT 'System', COUNT_BIG(InventoryFileId) FROM InventoryFile WHERE DenistingStatus=20
		)
		SELECT Category, Counts FROM cte
	END
	ELSE IF(@flag='FileTypeChildCount')
	BEGIN
		with cte(FileCount,FileType) AS
		(
			SELECT ISNULL(SUM(e.EmbeddedExtractionCount),0) AS filecount, ftm.FileType AS filetype 
				FROM Edem e 
				INNER JOIN FileTypeMaster ftm ON e.OriginalFileType=ftm.FileTypeId 
				WHERE ftm.FileType='ContainerType' 
				GROUP BY e.OriginalFileType,ftm.FileType 
			UNION
			SELECT ISNULL(SUM(e.ZipChildCount),0) AS filecount, ftm.FileType AS filetype 
				FROM Edem e 
				INNER JOIN FileTypeMaster ftm ON e.OriginalFileType=ftm.FileTypeId
				WHERE ftm.FileType='ZipType' 
				GROUP BY e.OriginalFileType,ftm.FileType	
		)
		SELECT * FROM cte
	END
END

exec usp_getChartData 'FileStatusChart'

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCountAnnouncement]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--EXEC usp_GetCountAnnouncement 1

CREATE   PROC [dbo].[usp_GetCountAnnouncement]
	@AnnouncementType BIT = 0 -- 0 for current 1 for upcoming announcement
AS
BEGIN
	
	DECLARE @qry NVARCHAR(MAX) = NULL;

	-- query for get record based on pagestart and pageend
	IF @AnnouncementType = 0
	BEGIN
	SET @qry = N'SELECT COUNT(AnnouncementId)
				 FROM Announcement
				 WHERE CAST(StartDate AS DATE) <= CAST(GETDATE() AS DATE) 
			     AND CAST(EndDate AS DATE) >= CAST(GETDATE() AS DATE)'
	END
	ELSE IF @AnnouncementType = 1
	BEGIN
	SET @qry = N'SELECT COUNT(AnnouncementId)
				 FROM Announcement
				 WHERE CAST(StartDate AS DATE) > CAST(GETDATE() AS DATE)'
	END

	EXEC sp_executeSql @qry
END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCustomMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetCustomMetadata]
	@metadata VARCHAR(MAX)
AS
BEGIN
		DECLARE @qry NVARCHAR(MAX) = NULL
			SET @qry = N'SELECT *
			FROM(SELECT cm.AutoDocId,cmf.CustomColumnName AS ColumnName,cm.MetadataValue AS MetaValue
			FROM CustomMetadata cm
			INNER JOIN CustomMetadataField cmf
			ON cm.CustomMetadataFieldId = cmf.CustomMetadataFieldId
			WHERE CustomColumnName IN(SELECT MetadataColumnName 
									  FROM #MetadataField)
			GROUP BY cm.AutoDocId,cm.MetadataValue,cmf.CustomColumnName) AS dat
			PIVOT  
			(  
				MAX(dat.MetaValue) FOR Columnname 
				IN (' + @metadata + ')
			) AS Tab2'
		EXEC (@qry)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetDataFromDynamicSelection]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_GetDataFromDynamicSelection 1
CREATE   PROC [dbo].[usp_GetDataFromDynamicSelection]
	@userId INT
AS
BEGIN
	DECLARE @columnlist VARCHAR(50) = NULL -- store the list of table from Layout table
	DECLARE @GridColumn VARCHAR(MAX) = NULL -- store no of column from selected column list
	DECLARE @metadata VARCHAR(MAX) = NULL -- store CustomMetadataField values as comma seperated
	DECLARE @qry NVARCHAR(MAX) = NULL
	DECLARE @JoinQuery NVARCHAR(MAX) = NULL

	-- include list of all tables columns except CustomMetadataField table column
	IF OBJECT_ID('tempdb..#selectedColumnTable') IS NOT NULL
	BEGIN
		DROP TABLE #selectedColumnTable
	END
	CREATE TABLE #SelectedColumnTable 
	(
		ColumnName VARCHAR(50)
		,TableName VARCHAR(50)
	)
	
	-- include list of all columns of CustomMetadataField table
	
	IF OBJECT_ID('tempdb..#selectedTableHierarchy') IS NOT NULL
	BEGIN
		DROP TABLE #selectedTableHierarchy
	END
	CREATE TABLE #MetadataField
	(
		MetadataColumnName VARCHAR(50)
	)

	-- @columnlist will store values of columnid's in comma seperated format from layout table
	SELECT @columnlist = ColumnIdList FROM Layout WHERE UserId = @userid;
	
	-- get records in Vertical Format based on @columnlist except 'CustomMetadataField' Table
	SET @qry = N'SELECT htm.TableName+''.''+cd.ColumnName, htm.TableName
				 FROM ColumnDetail cd
				 INNER JOIN HierarchyTableMaster htm
				 ON cd.TableId = htm.TableId
				 WHERE cd.ColumnDetailId IN('+ @columnlist +')
				 AND cd.TableId <> 7'
	
	-- inserting records into #SelectedColumnTable table from 'ColumnDetail' except 'CustomMetadataField'
	INSERT INTO #SelectedColumnTable
	EXEC (@qry)

	SELECT * FROM #SelectedColumnTable
	-- get records in Vertical Format based on @columnlist of only 'CustomMetadataField' Table
	SET @qry = N'SELECT ColumnName
				FROM ColumnDetail 
				WHERE ColumnDetailId IN('+ @columnlist +') 
				AND TableId = 7'
	
	-- inserting records into #MetadataField table from 'ColumnDetail' of only 'CustomMetadataField'
	INSERT INTO #MetadataField
	EXEC (@qry)

	-- user define table type to pass vertical data into function
	IF TYPE_ID(N'VerticalToHorizontal') IS NULL
	BEGIN
		CREATE TYPE VerticalToHorizontal  AS TABLE
		(
			Verticaldata VARCHAR(MAX)
		)
	END

	DECLARE @VerticalData VerticalToHorizontal --  store value for passing it to the utfn_VerticalToHorizontal() function to get comma seperated values

	-- insert comma seperated 'MetadataColumn name' into table type @VerticalData
	INSERT INTO @VerticalData
	SELECT MetadataColumnName FROM #MetadataField
	-- @metadata store MetadataColumn name into comma seperated
	SELECT @metadata = dbo.utfn_VerticalToHorizontal(@VerticalData)
	DELETE FROM @VerticalData

	-- insert comma seperated 'ColumnName' into table type @VerticalData
	INSERT INTO @VerticalData
	SELECT ColumnName FROM #SelectedColumnTable
	-- @GridColumn store MetadataColumn name into comma seperated
	SELECT @GridColumn = dbo.utfn_VerticalToHorizontal(@VerticalData)
	DELETE FROM @VerticalData

	-- executing 'usp_DynamicJoinQueryGenerator' store procedure to get dynamic join query
	EXEC usp_DynamicJoinQueryGenerator @userId,@JoinQuery OUTPUT
	SELECT @JoinQuery

	-- if ColumnIdList contain CustomMetadata id then 
	IF @metadata IS NOT NULL
	BEGIN
	SET @qry = N'SELECT ' + @GridColumn + ',' + @metadata + '
				FROM ' + @JoinQuery + '
				LEFT JOIN (SELECT AutoDocId,' + @metadata + '
					FROM(
					SELECT AutoDocId
						  ,STUFF((SELECT + '',(CASE cm.CustomMetadataFieldId WHEN '' + CAST(CustomMetadataFieldId AS VARCHAR(10)) 
							  + '' THEN cm.MetadataValue END)'' AS [CustomColumnName]
					FROM CustomMetadataField  
					WHERE CustomColumnName IN (SELECT MetadataColumnName              
												FROM #MetadataField)
					FOR XML PATH('''')
					),1,1,'''')
				FROM CustomMetadata cm
				INNER JOIN CustomMetadataField cmf
				ON cm.CustomMetadataFieldId = cmf.CustomMetadataFieldId) 
				AS CustomMetadata
				ON Edem.AutoDocId = CustomMetadata.AutoDocId'
	END
	-- else 
	ELSE
	BEGIN
		SET @qry = N'SELECT ' + @GridColumn + '
				FROM ' + @JoinQuery
	END
	SELECT @qry
		EXEC (@qry)

		DROP TABLE #MetadataField

END

--SELECT * FROM CustomMetadata
--SELECT * FROM CustomMetadataField
--SELECT * FROM Layout
--SELECT * FROM ColumnDetail

--insert into ColumnDetail(ColumnName,TableId) values
--('MetadataInfo',7)
--,('PageCount',7)
--,('FileSize',7)

--UPDATE CustomMetadataField
--SET CustomColumnName = 'MetadataInfo'
--WHERE CustomMetadataFieldId = 2


--INSERT INTO Layout(UserId,ColumnIdList)
--VALUES(1,'4,7,8,9')
GO
/****** Object:  StoredProcedure [dbo].[usp_GetDataFromDynamicSelection1]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_GetDataFromDynamicSelection1 3
CREATE   PROC [dbo].[usp_GetDataFromDynamicSelection1]
	@userId INT
AS
BEGIN
	DECLARE @columnlist VARCHAR(50) = NULL
	DECLARE @GridColumn VARCHAR(MAX) = NULL
	DECLARE @GridTable VARCHAR(MAX) = NULL
	DECLARE @metadata VARCHAR(MAX) = NULL
	DECLARE @qry NVARCHAR(MAX) = NULL
	DECLARE @VerticalData VerticalToHorizontal
	DECLARE @JoinQuery NVARCHAR(MAX) = NULL

	-- include list of all tables columns except CustomMetadataField table column
	CREATE TABLE #SelectedColumnTable 
	(
		ColumnName VARCHAR(50)
		,TableName VARCHAR(50)
	)
	
	-- include list of all columns of CustomMetadataField table
	CREATE TABLE #MetadataField
	(
		MetadataColumnName VARCHAR(50)
	)

	SELECT @columnlist = ColumnIdList FROM Layout WHERE UserId = @userid;
	
	SET @qry = N'SELECT TableName+''.''+ColumnName, TableName
				 FROM ColumnDetail 
				 WHERE ColumnDetailId IN('+ @columnlist +')
				 AND TableName <> ''CustomMetadataField'''
	
	INSERT INTO #SelectedColumnTable
	EXEC (@qry)

	SET @qry = N'SELECT ColumnName
				FROM ColumnDetail 
				WHERE ColumnDetailId IN('+ @columnlist +') 
				AND TableName = ''CustomMetadataField'''
	
	INSERT INTO #MetadataField
	EXEC (@qry)

	IF TYPE_ID(N'VerticalToHorizontal') IS NULL
	BEGIN
		CREATE TYPE VerticalToHorizontal  AS TABLE
		(
			Verticaldata VARCHAR(MAX)
		)
	END

	INSERT INTO @VerticalData
	SELECT MetadataColumnName FROM #MetadataField
	SELECT @metadata = dbo.utfn_VerticalToHorizontal(@VerticalData)
	DELETE FROM @VerticalData

	INSERT INTO @VerticalData
	SELECT ColumnName FROM #SelectedColumnTable
	SELECT @GridColumn = dbo.utfn_VerticalToHorizontal(@VerticalData)
	DELETE FROM @VerticalData

	INSERT INTO @VerticalData
	SELECT DISTINCT TableName FROM #SelectedColumnTable
	SELECT @GridTable = dbo.utfn_VerticalToHorizontal(@VerticalData)
	DELETE FROM @VerticalData

	EXEC usp_DynamicJoinQueryGenerator @userId,@JoinQuery OUTPUT
	
	IF @metadata IS NOT NULL
	BEGIN
	SET @qry = N'SELECT ' + @GridColumn + ',' + @metadata + '
				FROM ' + @JoinQuery + '
				LEFT JOIN (SELECT PivotedColumn.AutoDocId,' + @metadata + '
					FROM(
					SELECT cm.AutoDocId
							,cmf.CustomColumnName AS ColumnName
							,cm.MetadataValue AS MetaValue     
					FROM CustomMetadata cm     
					INNER JOIN CustomMetadataField cmf     
					ON cm.CustomMetadataFieldId = cmf.CustomMetadataFieldId     
					WHERE CustomColumnName IN(
										SELECT MetadataColumnName              
										FROM #MetadataField)     
					GROUP BY cm.AutoDocId
								,cm.MetadataValue
								,cmf.CustomColumnName) AS CustomColumn     
					PIVOT(MAX(CustomColumn.MetaValue) 
							FOR Columnname IN (' + @metadata + ')) AS PivotedColumn) AS CustomMetadata
				ON Edem.AutoDocId = CustomMetadata.AutoDocId'
	END
	ELSE
	BEGIN
		SET @qry = N'SELECT ' + @GridColumn + '
				FROM ' + @JoinQuery
	END
	
		EXEC (@qry)

		DROP TABLE #MetadataField

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEventUserSubscription]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_GetEventUserSubscription]
	@UserId INT = NULL
	,@EventId INT = NULL
AS
BEGIN
	IF @UserId IS NOT NULL
		BEGIN
			SELECT em.EventId 
				   ,em.EventName
				   ,acm.AlertCategoryName
				   ,acm.ModuleId
				   ,IIF(sub.IsActive = 1, 1, 0) AS IsActive
			FROM EventMaster em
			LEFT JOIN AlertCategoryMaster acm
			ON em.AlertCategoryId = acm.AlertCategoryId
			LEFT JOIN Subscription sub
			ON sub.EventId = em.EventId
			AND sub.UserId = @UserId
			ORDER BY acm.AlertCategoryId
		END

	IF @EventId IS NOT NULL
		BEGIN
			SELECT ul.FirstName + ' ' + ul.LastName
				   ,acm.AlertCategoryName
			FROM Subscription s
			INNER JOIN UserLogin ul
			ON s.UserId = ul.UserId
			INNER JOIN EventMaster em
			ON s.EventId = em.EventId
			INNER JOIN AlertCategoryMaster acm
			ON em.AlertCategoryId = acm. AlertCategoryId
			WHERE s.EventId = @EventId
			AND s.IsActive = 1
		END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetPagingAnnouncement]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_GetPagingAnnouncement]
	@PageRow INT -- Total Rows in one page
	,@PageNo INT -- Page number
	,@orderby VARCHAR(30) -- Name of field to be order by
	,@AnnouncementType BIT = 0 -- 0 for current 1 for upcoming announcement
AS
BEGIN
	DECLARE @PageStart INT; -- for starting value of page
	DECLARE @qry NVARCHAR(MAX) = NULL;

	-- equation for page start value base on page number
	SET @PageStart = (@PageRow * @PageNo) - @PageRow 

	-- query for get record based on pagestart and pageend
	IF @AnnouncementType = 0
	BEGIN
	SET @qry = N'SELECT a.AnnouncementId
						,a.AnnouncementMessage
						,CAST(a.StartDate AS DATE) AS StartDate
						,CAST(a.EndDate as DATE) as EndDate
						,CAST(a.CreatedDate as DATE) CreatedDate
						,a.IsActive
						,ulcreatedby.FirstName ' + '+'' ''+' + ' ulcreatedby.LastName AS CreatedBy
						,a.UpdatedDate
						,ulupdatedby.FirstName ' + '+'' ''+' + ' ulupdatedby.LastName AS UpdatedBy 
				FROM Announcement a
				LEFT JOIN UserLogin ulcreatedby 
					ON a.CreatedBy = ulcreatedby.UserId 
					LEFT JOIN UserLogin ulupdatedby 
					ON a.UpdatedBy = ulupdatedby.UserId
					WHERE CAST(a.StartDate AS DATE) <= CAST(GETDATE() AS DATE) 
					AND CAST(a.EndDate AS DATE) >= CAST(GETDATE() AS DATE)
				ORDER BY ' + @orderby + '
				OFFSET ' + CAST(@PageStart AS VARCHAR(10)) + ' ROWS 
				FETCH NEXT ' + CAST(@PageRow AS VARCHAR(2)) + ' ROWS ONLY';
	END
	ELSE IF @AnnouncementType = 1
	BEGIN
	SET @qry = N'SELECT a.AnnouncementId
						,a.AnnouncementMessage
						,CAST(a.StartDate AS DATE) AS StartDate
						,CAST(a.EndDate as DATE) as EndDate
						,CAST(a.CreatedDate as DATE) CreatedDate
						,a.IsActive
						,ulcreatedby.FirstName ' + '+'' ''+' + ' ulcreatedby.LastName AS CreatedBy
						,a.UpdatedDate
						,ulupdatedby.FirstName ' + '+'' ''+' + ' ulupdatedby.LastName AS UpdatedBy 
				FROM Announcement a
				LEFT JOIN UserLogin ulcreatedby 
					ON a.CreatedBy = ulcreatedby.UserId 
					LEFT JOIN UserLogin ulupdatedby 
					ON a.UpdatedBy = ulupdatedby.UserId
						WHERE CAST(a.StartDate AS DATE) > CAST(GETDATE() AS DATE)
					ORDER BY ' + @orderby + ' 
					OFFSET ' + CAST(@PageStart AS VARCHAR(10)) + ' ROWS 
					FETCH NEXT ' + CAST(@PageRow AS VARCHAR(2)) + ' ROWS ONLY';
	END

	EXEC sp_executeSql @qry
END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetPagingInventory]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_GetPagingInventory]
	@PageRow INT -- Total Rows in one page
	,@PageNo INT -- Page number
	,@OrderBy VARCHAR(25) -- fieldname for order by
	,@Condition VARCHAR(200) = NULL -- Condition on inventoryMaster table
AS
BEGIN
	DECLARE @PageStart INT; -- for starting value of page
	DECLARE @qry NVARCHAR(MAX) = NULL; -- qry to execute

	-- equation for page start value base on page number
	SET @PageStart = (@PageRow * @PageNo) - @PageRow 
	
	-- query for get record based on pagestart and pageend

	SET @qry = N'SELECT InventoryId
						,InventoryName
						,InventoryPath
						,OutputInventoryPath
						,CreationTime
						,CreatedBy
						,InitialInventoryStatus
						,DenistingStatus
						,StellentStatus
						,DeDuplicationStatus
						,CopyStatus
						,MetadataExtractionStatus
						,MigrateToEdemStatus
						,InventoryStatus
						,CustodianId
						,JobId
						,Comments
				 FROM InventoryMaster 
				 ' + CASE WHEN @Condition IS NULL 
						  THEN '' 
						  ELSE 'WHERE ' + @Condition END + '
				 ORDER BY ' + @OrderBy + '
				 OFFSET ' + CAST(@PageStart AS VARCHAR(10)) + ' ROWS 
				 FETCH NEXT ' + CAST(@PageRow AS VARCHAR(2)) + ' ROWS ONLY';
	EXEC sp_executeSql @qry
END



GO
/****** Object:  StoredProcedure [dbo].[usp_GetPagingUserLogin]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_GetPagingUserLogin]
	@PageRow INT -- Total Rows in one page
	,@PageNo INT -- Page number
	,@OrderBy VARCHAR(10) -- order by column name
AS
BEGIN
	DECLARE @PageStart INT = NULL; -- for starting value of page
	DECLARE @qry NVARCHAR(MAX) = NULL;

	-- equation for page start value base on page number
	SET @PageStart = (@PageRow * @PageNo) - @PageRow 

	-- query for get record based on pagestart and pageend

	SET @qry = N'SELECT	UserId
						,UserName
						,FirstName
						,LastName
						,EmailId
						,UserContact
						,DomainName
						,IsActive
						,IsLocked
				 FROM UserLogin
				 ORDER BY ' + @OrderBy + '
				 OFFSET ' + CAST(@PageStart AS VARCHAR(3)) + ' ROWS 
				 FETCH NEXT ' + CAST(@PageRow AS varchar(3)) + ' ROWS ONLY';
	
	EXEC sp_executeSql @qry
END


GO
/****** Object:  StoredProcedure [dbo].[usp_GetPagingZipEmbeddedPst]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_GetPagingZipEmbeddedPst 5,1,DataLoc,1,[2222,5555,11111,12345]


CREATE   PROC [dbo].[usp_GetPagingZipEmbeddedPst]
	@PageRow INT -- Total Rows in one page
	,@PageNo INT -- Page number
	,@columnName VARCHAR(MAX)
	,@flag BIT
	,@jobId VARCHAR(MAX) -- fieldname for order by
AS
BEGIN
	DECLARE @PageStart INT; -- for starting value of page
	DECLARE @qry NVARCHAR(MAX) = NULL; -- qry to execute

	-- equation for page start value base on page number
	SET @PageStart = (@PageRow * @PageNo) - @PageRow 
	
	-- query for get record based on pagestart and pageend

	SET @qry = N'SELECT ProcessId
						,JobId
						,'
	SET @qry = CONCAT(@qry,(SELECT CASE WHEN @columnName = 'ZipStatus'
									THEN 'ZipStatus
										  ,RelativePath
										  ,Comments'
									ELSE '' END +''+
								CASE WHEN @columnName = 'EmbeddedStatus'
									THEN 'EmbeddedStatus
										  ,AttachmentExtractionStatus
										  ,MetadataExtractionStatus'
									ELSE '' END +''+
								CASE WHEN @columnName = 'DataLoc'
									THEN 'RelativePath
										  ,PSTInitializationStatus
										  ,AttachmentExtractionStatus
										  ,MetadataExtractionStatus
										  ,SaveAsMSGStatus'
									ELSE '' END),' FROM ProcessMaster 
						WHERE ')
	SET @qry = CONCAT(@qry,'JobId IN(',@jobId,')'
					 ,(SELECT CASE WHEN @columnName = 'ZipStatus' AND @flag = 1	
									THEN 'AND ZipStatus = 1 '
									ELSE '' END +''+
								CASE WHEN @columnName = 'EmbeddedStatus' AND @flag = 1
									THEN 'AND EmbeddedStatus = 1 '  
									ELSE '' END +''+
								CASE WHEN @columnName = 'DataLoc' AND @flag = 0
									THEN 'AND DataLoc = 1 '
									ELSE '' END +''+
								CASE WHEN @columnName = 'DataLoc' AND @flag = 1
									THEN 'AND DataLoc = 1 AND PSTInitializationStatus = 1 '
									ELSE '' END)
					,
				 'ORDER BY ProcessId
				 OFFSET ',CAST(@PageStart AS VARCHAR(10)),' ROWS 
				 FETCH NEXT ', CAST(@PageRow AS VARCHAR(2)) , ' ROWS ONLY')	
	--SELECT @qry
	EXEC sp_executeSql @qry
END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetProcessMasterDataForMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_GetProcessMasterDataForMetadata]
AS
BEGIN
	SELECT ProcessId
			,JobId
			,EmbeddedStatus
			,MetadataExtractionStatus
	FROM ProcessMaster
	WHERE EmbeddedStatus = 1 AND MetadataExtractionStatus = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetZipEmbeddedPst]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_GetZipEmbeddedPst EmbeddedStatus,11111

CREATE   PROC [dbo].[usp_GetZipEmbeddedPst]
	@Status VARCHAR(MAX)
	,@jobId VARCHAR(MAX)
AS
BEGIN
	DECLARE @qry NVARCHAR(MAX) = NULL

	SET @qry = N'SELECT ProcessId
						,JobId
						,'
	SET @qry = CONCAT(@qry,(SELECT CASE WHEN @Status = 'ZipStatus'
									THEN 'ZipStatus
										  ,RelativePath
										  ,Comments'
									ELSE '' END +''+
								CASE WHEN @Status = 'EmbeddedStatus'
									THEN 'EmbeddedStatus
										  ,AttachmentExtractionStatus
										  ,MetadataExtractionStatus'
									ELSE '' END +''+
								CASE WHEN @Status = 'DataLoc'
									THEN 'RelativePath
										  ,PSTInitializationStatus
										  ,AttachmentExtractionStatus
										  ,MetadataExtractionStatus
										  ,SaveAsMSGStatus'
									ELSE '' END),' FROM ProcessMaster 
						WHERE ')
	SET @qry = CONCAT(@qry,STUFF 
					((SELECT CASE WHEN @Status = 'ZipStatus'	
									THEN 'AND  ZipStatus = 1 '
									ELSE '' END +''+
								CASE WHEN @Status = 'EmbeddedStatus'
									THEN 'AND  EmbeddedStatus = 1 '  
									ELSE '' END +''+
								CASE WHEN @Status = 'DataLoc'
									THEN 'AND  DataLoc = 1 '
									ELSE '' END),1,5,'')
					,'AND JobId IN(',@jobId,')')
	EXEC (@qry)
								
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertCustomField]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_InsertCustomField]
	@CustomColumnName VARCHAR(50)
	,@Datatype VARCHAR(50)
AS
BEGIN
	INSERT INTO CustomMetadataField(CustomColumnName,Datatype) VALUES(@CustomColumnName,@Datatype)

	INSERT INTO ColumnDetail(ColumnName,TableName)
	VALUES(@CustomColumnName,'CustomMetadataField')
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateAnnouncement]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_InsertUpdateAnnouncement]
	 @AnnouncementId INT 
	,@AnnouncementMessage NVARCHAR(MAX) = NULL -- Announcement message
	,@StartDate DATETIME2 = NULL -- Start Date of announcement 
	,@EndDate DATETIME2 = NULL-- Start Date of announcement 
	,@CreateOrUpdateBy INT -- UserId From session  
AS
BEGIN
	IF @AnnouncementId = 0 -- if AnnouncementId does not exist then insert record 
		BEGIN
			-- Insert into Announcement
			INSERT INTO Announcement(AnnouncementMessage
									 ,StartDate
									 ,EndDate
									 ,CreatedBy
									 ,UpdatedBy) 
			VALUES(@AnnouncementMessage
				   ,@StartDate
				   ,@EndDate
				   ,@CreateOrUpdateBy
				   ,@CreateOrUpdateBy)
		END
	ELSE -- If AnnouncementId exist then update record
		BEGIN
			-- Update Annonucement Data
			UPDATE Announcement
			SET AnnouncementMessage = @AnnouncementMessage
				,StartDate = @StartDate -- Update start date of announcement
				,EndDate = @EndDate -- Update end date of announcement
				,UpdatedDate = GETDATE() -- Set updated date of announcement
				,UpdatedBy = @CreateOrUpdateBy -- Set the name of user who updated announcement
			WHERE AnnouncementId = @AnnouncementId
		END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateSubscription]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_InsertUpdateSubscription]
	@EventId INT
	,@UserId INT
AS
BEGIN
	IF(SELECT SubscriptionId FROM Subscription WHERE EventId = @EventId AND UserId = @UserId) IS NOT NULL -- if SubscriptionId exist then update record 
		BEGIN
			-- Update Subscription Activation Status
			UPDATE Subscription
			SET IsActive = CASE WHEN IsActive = 1 THEN 0 ELSE 1 END
			WHERE EventId = @EventId
			AND UserId = @UserId
		END
	ELSE -- If SubscriptionId doesn't exist then insert record
		BEGIN
			-- Insert into Subscription
			INSERT INTO Subscription(EventId
									 ,UserId) 
			VALUES(@EventId
				   ,@UserId)
		END
END


--EXEC usp_InsertUpdateSubscription 1, 66
--SELECT * FROM Subscription

			
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateUserLogin]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_InsertUpdateUserLogin]
	@UserId INT = 0
	,@UserName VARCHAR(15)
	,@FirstName VARCHAR(25)
	,@LastName VARCHAR(25)
	,@UserPassword VARCHAR(70) = NULL -- Encrypted password of user
	,@EmailId VARCHAR(60) -- Email id of user
	,@UserContact VARCHAR(15) -- Contact no of user
	,@DomainName VARCHAR(20) = NULL -- Domail Name Of User 
	,@EncryptionKey VARCHAR(20) = NULL -- Encryption key to convert original password to ecnrypted password
	,@RoleId TINYINT = NULL
AS
BEGIN
	IF @UserId = 0 -- if AnnouncementId does not exist then insert record 
		BEGIN
			-- insert query for UserLogin table
			INSERT INTO UserLogin (UserName 
									,FirstName 
									,LastName 
									,UserPassword 
									,EmailId 
									,UserContact
									,DomainName
									,EncryptionKey
									,ExpirationOfPassword
									,RoleId) 
			VALUES (@UserName 
					,@FirstName
					,@LastName 
					,@UserPassword 
					,@EmailId
					,@UserContact 
					,@DomainName
					,@EncryptionKey
					,DATEADD(dd,15,GETDATE())
					,@RoleId);
		END
	ELSE -- If AnnouncementId exist then update record
		BEGIN
			-- Update Annonucement Data
			UPDATE UserLogin
			SET FirstName = @FirstName
				,LastName = @LastName
				,EmailId = @EmailId
				,UserContact = @UserContact
			WHERE UserId = @UserId
		END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUpdateUserLoginAudit]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- UserLoginAudit Insert/Update SP
CREATE   PROC [dbo].[usp_InsertUpdateUserLoginAudit]

	@UserId INT -- Foreign key from UserLogin 
	,@IPConfig VARCHAR(45) = NULL -- IP address of user
	,@BrowserSetting VARCHAR(50) = NULL -- Browser name used by user
AS
BEGIN
	IF @IPConfig IS NULL AND @BrowserSetting IS NULL
		BEGIN
			UPDATE UserLoginAudit
			SET LogoutTimeStamp = GETDATE() -- will update user logout time
			WHERE UserId = @UserId
			AND LogoutTimeStamp IS NULL
		END
	ELSE
		BEGIN
			INSERT INTO UserLoginAudit (UserId
										,LoginTimeStamp
										,IPConf
										,BrowserSetting) 
			VALUES (@UserId
					,GETDATE() -- to insert current login time stamp
					,@IPConfig
					,@BrowserSetting);
		END
END


GO
/****** Object:  StoredProcedure [dbo].[usp_LoginAuthentication]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- LoginAuthentication SP
CREATE   PROC [dbo].[usp_LoginAuthentication]
(
	@UserName VARCHAR(15) -- Username from UserLogin Table
	,@UserPassword VARCHAR(70) -- UserPassword from UserLogin Table
	,@IPConfig VARCHAR(45) -- IP configuration of user
	,@BrowserSetting VARCHAR(50) -- Browser name used by user
	,@LoginAuthenticationResult VARCHAR(50) OUTPUT -- Login result
)
AS
BEGIN
	DECLARE @UserId INT = NULL; -- User Id of sucessfull login user
	DECLARE @invalidattemptcount INT = NULL; -- No of invalid attempt by user

	-- lock user if user does not change password within expiration date
	UPDATE UserLogin
	SET IsLocked = 1
	WHERE ExpirationOfPassword <= GETDATE()
	AND IsActive = 1
	AND UserName = @UserName
	
	-- unlock user after 1 hour of invalid attempt
	UPDATE UserLogin
	SET IsLocked = 0
	,AttemptInvalidPassword = 0
	,LastInvalidAttemptTime = GETDATE()
	WHERE ExpirationOfPassword >= GETDATE()
	AND IsActive = 1
	AND UserName = @UserName
	AND DATEDIFF(HOUR
				 ,CASE WHEN ISDATE(CONVERT(DATETIME,LastInvalidAttemptTime)) <> 0  
					   THEN LastInvalidAttemptTime 
					   ELSE GETDATE() 
				  END
				 ,GETDATE()) >= 1
	
	
	-- Authenticate user login and return user id if login sucessfull
	SELECT @UserId = UserId
	FROM UserLogin
	WHERE UserName = @UserName
	AND UserPassword = @UserPassword 
	AND IsLocked = 0
	AND IsActive = 1
	
	IF @UserId IS NOT NULL
		BEGIN
			-- Reseting AttemptInvalidPassword and LastInvalidAttemptTime 
			UPDATE UserLogin
			SET AttemptInvalidPassword = 0
			,LastInvalidAttemptTime = NULL
			WHERE UserName = @UserName

			SET @LoginAuthenticationResult = 'Login Successfull';

			-- calling 'usp_SetUserLoginAudit' SP for UserLoginAudit log
			EXEC usp_SetUserLoginAudit @UserId, @IPConfig, @BrowserSetting
		END
	ELSE 
		BEGIN
			BEGIN
				-- update AttemptInvalidPassword by 1 on every invalid attempt
				UPDATE UserLogin
				SET AttemptInvalidPassword = AttemptInvalidPassword + 1 
					,@invalidattemptcount = AttemptInvalidPassword + 1
					,LastInvalidAttemptTime = GETDATE()
				WHERE UserName = @UserName
				AND IsActive = 1
				AND DATEDIFF(HOUR
							 ,CASE WHEN ISDATE(CONVERT(DATETIME,LastInvalidAttemptTime)) <> 0  
								   THEN LastInvalidAttemptTime 
								   ELSE GETDATE() 
							  END
							 ,GETDATE()) < 1
				
				IF @invalidattemptcount >= 3
				BEGIN
					-- to lock user after 3 invalid attempt
					UPDATE UserLogin
					SET IsLocked = 1
					WHERE UserName = @UserName

					SET @LoginAuthenticationResult = 'User Locked';
				END
				ELSE
					BEGIN
						-- display total attempt left for login
						SET @LoginAuthenticationResult = 'Attempt Left :- ' + CAST((3 - @invalidattemptcount) AS VARCHAR(10));
					END
			END
		END
		-- if user name is invalid retrun 'Invalid Credenial'
		IF @LoginAuthenticationResult IS NULL
		BEGIN
			 SET @LoginAuthenticationResult = 'Invalid Credential';
		END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_logindatecheck]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_logindatecheck]
	@fromdate DATE = NULL
	,@todate DATE = NULL
AS 
BEGIN
SELECT *
FROM LoginLogoutAudit
 WHERE LoginTime BETWEEN @fromdate AND @todate
 END
GO
/****** Object:  StoredProcedure [dbo].[usp_MigrationInventoryToEdem]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_MigrationInventoryToEdem]
	@InventoryId INT
	,@AlertMessage VARCHAR(80) OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	--- Temp Table Creation
	CREATE TABLE #batch
	(
		BatchId INT
		,StartRange BIGINT
		,EndRange BIGINT
	)
	-- Temp Table Insertion with Batch Generation
	
	INSERT INTO #batch
	SELECT BatchNo
			,(SELECT MIN(InventoryFileId) 
			  FROM InventoryFile (NOLOCK)
			  WHERE FamilyInventoryFileId >= MIN(Batch.InventoryFileId)) AS StartRange
			,(SELECT MAX(InventoryFileId) 
			  FROM InventoryFile (NOLOCK)
			  WHERE FamilyInventoryFileId <= MAX(Batch.FamilyInventoryFileId)) AS EndRange
	FROM (SELECT ifchild.InventoryFileId
				 ,ifparent.FamilyInventoryFileId
				 ,ifchild.InventoryId
				 ,NTILE((SELECT COUNT(InventoryFileId)
						 FROM InventoryFile (NOLOCK)
						 WHERE InventoryId = @InventoryId)/100000 + 1) 
						 OVER(ORDER BY ifchild.FamilyInventoryFileId) AS BatchNo
		  FROM InventoryFile ifchild (NOLOCK)
		  LEFT JOIN InventoryFile ifparent (NOLOCK)
		  ON ifchild.FamilyInventoryFileId = ifparent.InventoryFileId
		  WHERE ifchild.InventoryId = @InventoryId
		  AND ifchild.MasterToProcess = 1
		 ) AS Batch
	GROUP BY BatchNo,InventoryId
			
	BEGIN TRY
		BEGIN TRANSACTION

			DECLARE @cnt INT = NULL;
			DECLARE @inc INT = 1;
			SELECT @cnt = COUNT(BatchId) FROM #batch;
			DECLARE @startrange BIGINT = NULL;
			DECLARE @endrange BIGINT = NULL;
			DECLARE @ProcessId INT = NULL;
			DECLARE @TotalCount BIGINT = NULL;

			DECLARE @Inserted TABLE
			(
				InsertedId INT
			)
			
			UPDATE InventoryMaster
			SET MigrateToEdemStatus = 2
			WHERE InventoryId = @inventoryid

			WHILE  @inc <= @cnt
			BEGIN
				
				SELECT @startrange = StartRange
					   ,@endrange = EndRange 
				FROM #batch 
				WHERE BatchId = @inc
				

				INSERT INTO ProcessMaster(InventoryId
										  ,CustodianId
										  ,JobId
										  ,TextExtractionStatus
										  ,EmbeddedStatus
										  ,AttachmentExtractionStatus
										  ,ZipStatus
										  ,MetadataExtractionStatus
										  ,CreatedTime
										  ,PSTInitializationStatus
										  ,SaveAsMSGStatus)
				OUTPUT INSERTED.ProcessId INTO @Inserted(InsertedId)
				SELECT InventoryId
					   ,CustodianId
					   ,JobId
					   ,1 AS TextExtractionStatus
					   ,1 AS EmbeddedStatus
					   ,0 AS AttachmentExtractionStatus
					   ,1 AS ZipStatus
					   ,0 AS MetadataExtractionStatus
					   ,GETDATE() AS CreatedTime
					   ,0 AS PSTInitializationStatus
					   ,0 AS SaveAsMSGStatus
				FROM InventoryMaster (NOLOCK)
				WHERE InventoryId = @inventoryid

				select * from processMaster
				SELECT @ProcessId = InsertedId FROM @Inserted
				DELETE FROM @Inserted

				INSERT INTO Edem(AutoFamilyId
								,ProcessId
								,InventoryId 
								,InventoryFileId
								,DocId
								,JobId
								,CustodianId
								,OriginalFolderPath
								,OriginalFileName
								,OriginalFileExtension
								,OriginalFileSize
								,OriginalFileType
								,FileExtensionToUse
								,NativeFolderPath
								,NativeFileName
								,DocHashValueMD5
								,DocHashValueSHA
								,IsReadOnly
								,FileExtensionId
								,InsertedByApplicationId
								,CreateDate
								,LastModifiedDate
								,LastAccessedDate)
				SELECT NEXT VALUE FOR SqAutoDocId
						,@ProcessId
						,InventoryId
						,InventoryFileId 
						,DocId
						,JobId
						,CustodianId
						,OriginalFolderPath
						,OriginalFileName
						,OriginalFileExtension
						,OriginalFileSize
						,OriginalFileType
						,FileExtensionToUse
						,NativeFolderPath
						,NativeFileName
						,DocHashValueMD5
						,DocHashValueSHA
						,IsReadOnly
						,FileExtensionId
						,2 AS InsertedByApplicationId
						,FileCreatedDate
						,FileLastModifiedDate
						,FileLastAccessedDate
				FROM InventoryFile (NOLOCK)
				WHERE MasterToProcess = 1 
				AND InventoryFileId BETWEEN @startrange AND @endrange;
	
				SET @inc = @inc + 1;

			END
			DROP TABLE #batch

			UPDATE invf
			SET invf.AutoDocId = edemf.AutoDocId
			FROM Edem edemf (NOLOCK)
			INNER JOIN InventoryFile invf (NOLOCK)
			ON edemf.InventoryFileId = invf.InventoryFileId
			WHERE edemf.InventoryId = @inventoryid

			INSERT INTO ProcessStatus(AutoDocId
									  ,AutoFamilyId
									  ,ProcessId
									  ,MasterToProcess
									  ,MetadataExtractionStatus
									  ,AttachmentExtractionStatus
									  ,ZipStatus
									  ,EmbeddedStatus
									  ,TextExtractionStatus)
			SELECT edem.AutoDocId
				   ,edem.AutoFamilyId
				   ,edem.ProcessId   
				   ,1 AS MasterToProcess 
				   ,fem.MetadataExtractionStatus 
				   ,fem.AttachmentExtractionStatus 
				   ,fem.ZipStatus 
				   ,fem.EmbeddedStatus 
				   ,fem.TextExtractionStatus 
			FROM Edem edem (NOLOCK)
			INNER JOIN FileExtensionMaster fem (NOLOCK)
			ON edem.FileExtensionId = fem.FileExtensionId
			INNER JOIN InventoryFile invf (NOLOCK)
			ON edem.InventoryFileId = invf.InventoryFileId
			WHERE edem.InventoryId = @inventoryid

			UPDATE InventoryMaster
			SET MigrateToEdemStatus = 5
				,InventoryStatus = 5
			WHERE InventoryId = @inventoryid

			SELECT @TotalCount = COUNT(InventoryFileId) 
			FROM InventoryFile 
			WHERE InventoryId = @InventoryId
			AND MasterToProcess = 1

			SET @AlertMessage = CONCAT('Migration process complete for ',@TotalCount,' out of ', @TotalCount)
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS Error_msg;
		ROLLBACK
	END CATCH
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PerformDeDuplication]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_PerformDeDuplication]
(
	@InventoryId INT -- InventoryId for start deduplication process
	,@AlertMessage VARCHAR(80) OUTPUT -- Reoturn Completed if the DeDuplication Status is 5
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @TotalCount BIGINT = NULL;
			DECLARE @AffectedCount BIGINT = NULL;

			SELECT @TotalCount = COUNT(InventoryFileId) 
			FROM InventoryFile 
			WHERE InventoryId = @InventoryId
			AND MasterToProcess = 1

			-- update deduplication status as processing in InventoryMaster
			UPDATE InventoryMaster
			SET DeduplicationStatus = 2
			WHERE InventoryId = @InventoryId
						
			-- update deduplication status as 19 to the first file among the duplicate file in a group and also update deduplication status as 20 for duplicate files
			UPDATE InvfDerived
			SET InvfDerived.DeDuplicationStatus = CASE WHEN InvfDerived.RankByMD5 = 1 THEN 19 ELSE 20 END
				,InvfDerived.MasterToProcess = CASE WHEN InvfDerived.RankByMD5 = 1 THEN 1 ELSE 0 END
			FROM
			(SELECT InventoryFileId
					,OriginalFileName
					,DocHashValueMD5
					,DeDuplicationStatus
					,MasterToProcess
					,RANK() OVER(PARTITION BY DocHashValueMD5 
									ORDER BY InventoryFileId) AS RankByMD5  -- set rank to differenciate among duplicate MD5Hashcode
				FROM InventoryFile (NOLOCK)
				WHERE InventoryId = @InventoryId
				AND DeDuplicationStatus = 1
				AND MasterToProcess = 1) AS InvfDerived 


			--update DeduplicationStatus as completed on inventorymaster
			UPDATE InventoryMaster
			SET DeduplicationStatus = 5
			WHERE InventoryId = @InventoryId


			SELECT @AffectedCount = COUNT(InventoryFileId) 
			FROM InventoryFile 
			WHERE InventoryId = @InventoryId 
			AND DeDuplicationStatus = 19

			SET @AlertMessage = CONCAT('Deduplication process complete for ',@AffectedCount,' out of ', @TotalCount)
		COMMIT
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS MSG,
		ERROR_LINE() AS ERR_LINE;
		ROLLBACK;
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_PerformDenisting]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_PerformDenisting]
(
	@InventoryId INT -- InventoryId for start denisting process
	,@AlertMessage VARCHAR(80) OUTPUT -- Return Completed if the Denisting Status is 5
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @TotalCount BIGINT = NULL;
			DECLARE @AffectedCount BIGINT = NULL;
			
			-- update denistingstatus as processing on inventorymaster
			UPDATE InventoryMaster
			SET DenistingStatus = 2
				,InventoryStatus = 2
			WHERE InventoryId = @InventoryId 

			--if system file found then update denistingstatus as 20 
			UPDATE invf
			SET invf.DenistingStatus = 20
				,MasterToProcess = 0
			FROM InventoryFile invf
			INNER JOIN CLS_MD5Hash md5
			ON invf.DocHashValueMD5 = md5.HASH_MD5
			WHERE invf.InventoryId = @InventoryId

			--others file are updated denistingstatus as 19
			UPDATE InventoryFile
			SET DenistingStatus = 19
				,CopyStatus = 1
			WHERE DenistingStatus = 1
			AND InventoryId = @InventoryId

			--update deistingstatus as completed on inventorymaster
			UPDATE InventoryMaster
			SET DenistingStatus = 5
				,CopyStatus = 1
			WHERE InventoryId = @InventoryId

			SELECT @TotalCount = COUNT(InventoryFileId) 
			FROM InventoryFile 
			WHERE InventoryId = @InventoryId
			AND MasterToProcess = 1

			SELECT @AffectedCount = COUNT(InventoryFileId) 
			FROM InventoryFile 
			WHERE InventoryId = @InventoryId 
			AND DenistingStatus = 19

			SET @AlertMessage = CONCAT('Denisting process complete for ',@AffectedCount,' out of ',@TotalCount)
		COMMIT
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS MSG,
		ERROR_LINE() AS ERR_LINE;
		ROLLBACK;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetEdocMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_SetEdocMetadata]  
	@AutoDocId BIGINT = NULL
	,@ProcessId INT = NULL
	,@DocCreationDate DATETIME2 = NULL
    ,@DocModifiedDate DATETIME2 = NULL
    ,@DocLastAccessDate DATETIME2 = NULL
    ,@DocLastPrintDate DATETIME2 = NULL
    ,@DocTitle VARCHAR(50) = NULL
    ,@DocSubject VARCHAR(50) = NULL
    ,@DocAuthor VARCHAR(50) = NULL
    ,@DocManager VARCHAR(50) = NULL
    ,@DocCompany VARCHAR(100) = NULL
    ,@DocCategory VARCHAR(50) = NULL
    ,@DocKeyWords VARCHAR(MAX) = NULL
    ,@DocComment VARCHAR(MAX) = NULL
    ,@DocLastAuthor VARCHAR(50) = NULL
    ,@DocRevisionNo INT = NULL
    ,@DocAppname VARCHAR(50) = NULL
    ,@DocPageCount INT = NULL
    ,@DocNumberofSlides INT = NULL
    ,@DocNumberofNotes INT = NULL
    ,@DocNumberofHiddenSlides INT = NULL
    ,@DocHasSpeakerNotes BIT = NULL
    ,@DocVersion VARCHAR(30) = NULL
    ,@DocCreator VARCHAR(50) = NULL
    ,@DocHasPassword BIT = NULL
    ,@DocHasUserPassword BIT = NULL
    ,@DocIsEncrypted BIT = NULL
    ,@DocHasTrackChanges BIT = NULL
    ,@DocHasTrackChangesEnable BIT = NULL
    ,@DocShowRevisionEnable BIT = NULL
    ,@DocHasPrintedRivisonEnables BIT = NULL
    ,@DocHasHiddenRowColumns BIT = NULL
    ,@DocHasHiddenSlides BIT = NULL
    ,@DocHasProtectedSheet BIT = NULL
    ,@DocUTCDate DATETIME2 = NULL
    ,@DocSpeakerComments VARCHAR(MAX) = NULL
    ,@DocHeaderFooterInformation VARCHAR(MAX) = NULL
    ,@HasHeader BIT = NULL
    ,@HasFooter BIT = NULL
    ,@ProtectedSheetsName VARCHAR(MAX) = NULL
    ,@ExcelMoreThanNPages INT = NULL
    ,@HiddenSheetsName VARCHAR(MAX) = NULL
    ,@AudioLanguage VARCHAR(30) = NULL
    ,@StreamFormat VARCHAR(MAX) = NULL
    ,@Duration VARCHAR(15) = NULL
    ,@DocUserComments VARCHAR(MAX) = NULL
    ,@DocNativeRedactionLimitationInfo VARCHAR(MAX) = NULL
AS
BEGIN
	INSERT INTO EdocMetadata(
								AutoDocId
								,ProcessId  
								, DocCreationDate  
								, DocModifiedDate 
								, DocLastAccessDate 
								, DocLastPrintDate 
								, DocTitle  
								, DocSubject  
								, DocAuthor  
								, DocManager  
								, DocCompany  
								, DocCategory  
								, DocKeyWords  
								, DocComment  
								, DocLastAuthor  
								, DocRevisionNo  
								, DocAppname  
								, DocPageCount  
								, DocNumberofSlides  
								, DocNumberofNotes  
								, DocNumberofHiddenSlides  
								, DocHasSpeakerNotes  
								, DocVersion  
								, DocCreator  
								, DocHasPassword  
								, DocHasUserPassword   
								, DocIsEncrypted  
								, DocHasTrackChanges  
								, DocHasTrackChangesEnable  
								, DocShowRevisionEnable  
								, DocHasPrintedRivisonEnables  
								, DocHasHiddenRowColumns  
								, DocHasHiddenSlides  
								, DocHasProtectedSheet  
								, DocUTCDate 
								, DocSpeakerComments  
								, DocHeaderFooterInformation  
								, HasHeader  
								, HasFooter  
								, ProtectedSheetsName  
								, ExcelMoreThanNPages  
								, HiddenSheetsName  
								, AudioLanguage  
								, StreamFormat  
								, Duration 
								, DocUserComments  
								, DocNativeRedactionLimitationInfo  
							)
							VALUES
							(
								@AutoDocId 
								,@ProcessId 
								,@DocCreationDate  
								,@DocModifiedDate  
								,@DocLastAccessDate  
								,@DocLastPrintDate  
								,@DocTitle  
								,@DocSubject  
								,@DocAuthor  
								,@DocManager  
								,@DocCompany  
								,@DocCategory  
								,@DocKeyWords  
								,@DocComment  
								,@DocLastAuthor  
								,@DocRevisionNo 
								,@DocAppname  
								,@DocPageCount 
								,@DocNumberofSlides 
								,@DocNumberofNotes 
								,@DocNumberofHiddenSlides 
								,@DocHasSpeakerNotes 
								,@DocVersion 
								,@DocCreator  
								,@DocHasPassword 
								,@DocHasUserPassword 
								,@DocIsEncrypted 
								,@DocHasTrackChanges 
								,@DocHasTrackChangesEnable 
								,@DocShowRevisionEnable 
								,@DocHasPrintedRivisonEnables 
								,@DocHasHiddenRowColumns 
								,@DocHasHiddenSlides 
								,@DocHasProtectedSheet 
								,@DocUTCDate  
								,@DocSpeakerComments  
								,@DocHeaderFooterInformation  
								,@HasHeader 
								,@HasFooter 
								,@ProtectedSheetsName  
								,@ExcelMoreThanNPages 
								,@HiddenSheetsName  
								,@AudioLanguage 
								,@StreamFormat  
								,@Duration 
								,@DocUserComments  
								,@DocNativeRedactionLimitationInfo  
							)
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SetEmailMetadata]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_SetEmailMetadata](@emailmetadata UT_EmailMetadata READONLY)
AS
BEGIN
	INSERT INTO EmailMetadata
				(
					AutoDocId
					, ProcessId
					, EMEntryUniversalID 
					, EMAttachmentCount 
					, EMAttachmentList 
					, EMInternetMsgID  
					, EMInternetMsgHeader 
					, EMInternetCodepage 
					, EMCreateDate  
					, EMLastModificationDate  
					, EMMsgRead 
					, EMUTCDate  
					, EMSentDate  
					, EMReceiveDate  
					, EMFrom  
					, EMFromSMTP  
					, EMTo 
					, EMReplyTo 
					, EMToSMTP 
					, EMCc 
					, EMCcSMTP 
					, EMBcc 
					, EMBccSMTP 
					, EMSubject
					, EMImportance 
					, EMSensitivity  
					, EMFamilyConvIndex 
					, EMChildConvIndex 
					, EMParentUnid 
					, EMNoOFRecipients 
					, EMAttachDisplayList 
					, EMOnBehalfOf 
					, EMOnBehalfOfSMTP 
					, EMReceivedBy 
					, EMReceivedBySMTP 
					, EMMissedHiddenOLEAttachmentsCount 
					, EMMissedHiddenOLEAttachmentsList 
					, EMMessageCodepage 
					, EMRtfCodepage 
					, EMCodepageInUse 
					, EMCategories 
					, EMFlagStatus 
					, EMExpiryDate  
					, EMResources  
					, EMHasEmbeddedAttachments 
					, EMMailFormatType 
					, EMReadReceipt 
					, EMDeliveryReceipt 
					, EMConvertToLocale 
					, EMExtractedHiddenOLEAttachmentsList 
					, EMZArchiveInternetRecipents 
					, EMConversationIndex 
					, EMIsBodyencrypted  
					, EMInReplyTo 
					, EMType 
					, EMInternetReferences 
					, EMActivityCalendarType 
					, EMCompany 
					, EMActivityDuration 
					, EMActivityActivityAcName 
					, EMActivityActivityPhase 
					, EMActivityActivityKey 
					, EMCalendarChair 
					, EMCalendarLocation 
					, EMCalendarRecurrence 
					, EMCalendarRecurrencePattern 
					, EMCalMeetingTaskStatus 
					, EMContactName 
					, EMContactAddress 
					, EMContactFax 
					, EMContactPhone 
					, EMContacts 
					, EMContactDetails 
					, EMContactEmail 
					, EMContactDepartment 
					, EMContactOfficeName 
					, EMContactProfession 
					, EMContactJobTitle 
					, EMDistListDistributionListName   
					, EMDistListMemebers 
					, EMPostConversation 
					, EMStartDateTime  
					, EMEndDateTime  
					, EMTaskDueDateTime  
					, EMTaskCompleteDateTime  
					, EMTaskOwner 
					, EMLastModifiedBy 
					, EMDocAppName 
					, EMContactComments 
					, EMContactLocation 
					, EMReplyType 
					, EMReplyTime 
					, EMExtractedHiddenOLEAttachmentsCount 
				)
			SELECT * FROM @emailmetadata
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetFileExtensionData]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_SetFileExtensionData]
	@extension VARCHAR(10)
	,@inventorystatus TINYINT
	,@zipstatus TINYINT
	,@msgstatus TINYINT
	,@embeddedstatus TINYINT
	,@deduplicationstatus TINYINT
	,@cullingstatus TINYINT
	,@textextractionstatus TINYINT
	,@indexingstatus TINYINT
	,@searchingstatus TINYINT
	,@loadgenerationstatus TINYINT
AS 
BEGIN
	BEGIN TRY
		INSERT INTO FileExtensionMaster(Extension
										,InventoryStatus
										,ZipStatus
										,MsgStatus
										,EmbeddedStatus
										,DeduplicationStatus
										,CullingStatus
										,TextExtractionStatus
										,IndexingStatus
										,SearchingStatus
										,LoadGenerationStatus)
		 VALUES(@extension
				,@inventorystatus
				,@zipstatus
				,@msgstatus
				,@embeddedstatus
				,@deduplicationstatus
				,@cullingstatus
				,@textextractionstatus
				,@indexingstatus
				,@searchingstatus
				,@loadgenerationstatus);
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS MSG,
		ERROR_LINE() AS ERR_LINE;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetFolderDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[usp_SetFolderDetail](@folderdetail UT_FolderDetail READONLY)
AS
BEGIN
	INSERT INTO FolderDetail
				(
					 FolderName
					, FolderPath
					, FolderEntryId
					, MessageCount
					, FolderStatus
				)
	SELECT * FROM @folderdetail
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetInventoryFileData]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_SetInventoryFileData]
	@originalfilename VARCHAR(50) = null-- original name of file
	,@docid VARCHAR(20) -- unique docid of file in format of eg: -'00000000000001_00000'
	,@originalfileextension VARCHAR(25) -- file extension
	,@originalfolderpath VARCHAR(MAX) -- file path
	,@originalfilesize INT -- size of file
	,@filecreateddate DATETIME2 -- file creation date
    ,@filelastmodifieddate DATETIME2 -- file modified date
    ,@filelastaccesseddate DATETIME2 -- file last access date
    ,@isreadonly BIT -- file is readonly or not
    ,@iserror BIT -- 0 error not occured, 1 error in file
    ,@errorcomment VARCHAR(MAX) = NULL -- detail description of file error
	,@parentinventoryfileid INT = NULL -- parentid of inventory file
	,@parentdocid VARCHAR(20) = NULL -- parentdocid of unique docid
	,@familydocid VARCHAR(20) -- familydocid of unique docid
	,@inventoryid INT -- Foreignkey of InventoryMaster 
	,@DocHashValueMD5 VARCHAR(33)
	,@DocHashValueSHA VARCHAR(65)
	,@jobid INT -- Foreignkey of JobMaster
    ,@custodianid INT -- Foreignkey of CustodianMaster
AS 
BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
		IF (SELECT FileExtensionId FROM FileExtensionMaster (NOLOCK)
		           WHERE Extension = @originalfileextension) IS NULL
		BEGIN
			INSERT INTO FileExtensionMaster
					   (Extension
					   ,MetadataExtractionStatus
					   ,AttachmentExtractionStatus
					   ,ZipStatus
					   ,EmbeddedStatus
					   ,TextExtractionStatus)
					 VALUES
						   (@originalfileextension
						   ,0
						   ,0
						   ,0
						   ,0
						   ,0)
		END
		-- insert into InventoryFile
		INSERT INTO InventoryFile(OriginalFileName
									,DocId
									,OriginalFileExtension
									,OriginalFolderPath     
									,OriginalFileSize
									,OriginalFileType
									,FileCreatedDate
									,FileLastModifiedDate
									,FileLastAccessedDate
									,IsReadOnly
									,IsError
									,ErrorComment
									,ParentInventoryFileId
									,FamilyInventoryFileId
									,ParentDocId
									,FamilyDocId
									,FileExtensionId
									,InventoryId
									,DocHashValueMD5
									,DocHashValueSHA
									,JobId
									,CustodianId)
			SELECT @originalfilename
				,@docid 
				,@originalfileextension
				,@originalfolderpath
				,@originalfilesize
				,FileTypeId
				,@filecreateddate 
				,@filelastmodifieddate
				,@filelastaccesseddate
				,@isreadonly 
				,@iserror 
				,@errorcomment
				,@parentinventoryfileid 
				,NEXT VALUE FOR SqInventoryFileId 
				,@parentdocid 
				,@familydocid
				,FileExtensionId
				,@inventoryid 
				,@DocHashValueMD5
				,@DocHashValueSHA
				,@jobid 
				,@custodianid
			FROM FileExtensionMaster (NOLOCK)
			WHERE Extension = @originalfileextension;
		COMMIT
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS MSG,
		ERROR_LINE() AS ERR_LINE;
		ROLLBACK
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SetInventoryMasterData]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- SP for add data to InventoryMaster
CREATE   PROC [dbo].[usp_SetInventoryMasterData]
	@inventoryname VARCHAR(20) -- name of inventory
	,@inventorypath VARCHAR(MAX) -- input path of inventory
	,@outputinventorypath VARCHAR(MAX) -- output path of inventory
	,@createdby INT -- userid who created inventory
    ,@custodianid INT -- Foreign Key of CustodianMaster
    ,@jobid INT -- Foreignkey of JobMaster
    ,@comments VARCHAR(MAX) -- Comment by user
AS 
BEGIN

	INSERT INTO InventoryMaster(InventoryName
								,InventoryPath
								,OutputInventoryPath
								,CreatedBy
								,CustodianId
								,JobId
								,Comments)
	OUTPUT INSERTED.InventoryId -- return last inserted id
	VALUES(@inventoryname
		   ,@inventorypath
	  	   ,@outputinventorypath 
		   ,@createdby
		   ,@custodianid
		   ,@jobid 
		   ,@comments)
END



GO
/****** Object:  StoredProcedure [dbo].[usp_SetMessageDetail]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_SetMessageDetail](@messagedetail UT_MessageDetail READONLY)
AS
BEGIN
	INSERT INTO MessageDetail
				(
					MessageEntryId
					,FolderId
					,MessageStatus
				)
	SELECT * FROM @messagedetail
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SetStatusInformationMasterData]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_SetStatusInformationMasterData]
	@statusname VARCHAR(20)
AS
BEGIN
	BEGIN TRY
		INSERT INTO StatusInformationMaster(StatusName) 
		VALUES(@statusname);
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS MSG,
		ERROR_LINE() AS ERR_LINE;
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateInventoryModuleStatus]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery33.sql|7|0|C:\Users\TNet6.TNET\AppData\Local\Temp\5\~vsFC3F.sql
-- sp to update the status of Inventory module in InventoryMaster and InventoryFile
CREATE   PROC [dbo].[usp_UpdateInventoryModuleStatus]
	@InventoryId INT -- Inventory id where status is to be updated
	,@StellentStatus BIT = 0 -- StellentStatus will be [0 = if not checked], [1 = if it is checked]
	,@DeDuplicationStatus BIT  = 0 --DeDuplicationStatus will be [0 = if not checked], [1 = if it is checked]
	,@MetedataExtractionStatus BIT = 0 --MetadataExtractionStatus will be [0 = if not checked], [1 = if it is checked]
AS
BEGIN
	-- will update status in InventoryMaster
	UPDATE InventoryMaster
	SET StellentStatus = @StellentStatus 
		,DeDuplicationStatus = @DeDuplicationStatus
		,MetadataExtractionStatus = @MetedataExtractionStatus
	WHERE InventoryId = @InventoryId
	AND MigrateToEdemStatus = 0

	-- will update status in InventoryFile
	UPDATE InventoryFile
	SET StellentStatus = @StellentStatus
		,DeDuplicationStatus = @DeDuplicationStatus
		,MetadataExtractionStatus = @MetedataExtractionStatus
	WHERE InventoryId = @InventoryId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_UserAnalysis]    Script Date: 4/3/2018 6:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_UserAnalysis]
AS
BEGIN
	SELECT SUM(ActiveUser) AS ActiveUser
	   ,SUM(DeactiveUser) AS DeactiveUser
	   ,SUM(LockedUser) AS LockedUser
	   ,COUNT(UserId) AS TotalUser
	   ,(SELECT COUNT(UserId) 
		FROM (SELECT UserId  
		FROM UserLoginAudit 
		WHERE LogoutTimeStamp IS NULL
		GROUP BY UserId)AS d ) AS LoggedInUser
	FROM(
	SELECT CASE WHEN IsActive = 1 THEN  1 ELSE 0 END AS ActiveUser
		   ,CASE WHEN IsActive = 0 THEN 1 ELSE 0 END AS DeactiveUser
		   ,CASE WHEN IsLocked = 1 THEN 1 ELSE 0 END AS LockedUser
		   ,UserId
	FROM UserLogin) AS UserAnalysis
END



GO
