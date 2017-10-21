//
//  BJXConstDefine.h
//  bjxjob
//
//  Created by 北极星电力 on 16/8/22.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

// ------------------------------ APP&UM相关SDK名称 -----------------------------

UIKIT_EXTERN NSString *const kBJXHrSecretKey;

UIKIT_EXTERN NSString *const kAppStoreAppId;

UIKIT_EXTERN NSString *const kBJXUMAppKey;

UIKIT_EXTERN NSString *const kBJXUMMasterSecret;

UIKIT_EXTERN NSString *const kBJXQQAppKey;

UIKIT_EXTERN NSString *const kBJXWeChatAppKey;

UIKIT_EXTERN NSString *const kBJXWeChatAppSecret;

UIKIT_EXTERN NSString *const kBJXSinaAppkey;

UIKIT_EXTERN NSString *const kBJXSinaAppSecret;

// ------------------------------ 北极星通知名称 -----------------------------

UIKIT_EXTERN NSString *const kBJXUserUnReadInviteCountChange;   // 未读面试消息数通知

UIKIT_EXTERN NSString *const kBJXNewsGetActiveNotification;

UIKIT_EXTERN NSString *const kBJXHomeAlreadyCheckInviteStatus; // 首页已经检测完了面试通知的状态

UIKIT_EXTERN NSString *const kBJXLaunchJumpBtnDidTap; // 跳过按钮被点击

UIKIT_EXTERN NSString *const kBJXLaunchWebViewDidDisappear; // 启动web返回的时候发送通知

/**
 *  登录成功通知
 */
UIKIT_EXTERN NSString *const kBJXLoginSuccessNotification;
/**
 *  退出登录成功通知
 */
UIKIT_EXTERN NSString *const kBJXLogoutSuccessNotification;

/**
 *  绑定没有成功但是是新的用户的时候发送
 */
UIKIT_EXTERN NSString *const kBJXBindAccountUnExistNote;

/**
 *  选中了公告下的某个分类
 */
UIKIT_EXTERN NSString *const kBJXAnnouncementSelectedClassNote;

UIKIT_EXTERN NSString *const kBJXPowerNewsSelectedClassNote;
/**
 *  选中了面试下的某个状态栏
 */
UIKIT_EXTERN NSString *const kBJXInviteSelectedStatusNote;
/**
 *  关注工作状态发生了改变
 */
UIKIT_EXTERN NSString *const kBJXAttentionPostionStatusChange;

/**
 *  关注公司状态发生了改变
 */
UIKIT_EXTERN NSString *const kBJXAttentionCompanyStatusChange;

/**
 *  我的简历中编辑删除那个选项卡将要显示的时候调用
 */
UIKIT_EXTERN NSString *const kBJXMeResumeSegmentWillShow;

UIKIT_EXTERN NSString *const kBJXNoReadMessageNotification;     // 未读消息
UIKIT_EXTERN NSString *const kBjXUserCurrentLocation;

// ------------------------------ 北极星常用常量------------------------------

UIKIT_EXTERN NSString *const kBJXHomeRPCollItemID;

UIKIT_EXTERN NSString *const kBJXUserMessagePath;

UIKIT_EXTERN NSString *const kBJXOurNoticeCellId;

UIKIT_EXTERN NSString *const kBJXUserHeadImageLocalPath;

UIKIT_EXTERN NSString *const kBJXResumeDeliverySuccessHudItemId;

UIKIT_EXTERN NSString *const kBJXUserInviteHandleCellId;

UIKIT_EXTERN NSString *const kBJXInviteStatusCollectionCellId;

UIKIT_EXTERN NSString *const kBJXInviteRecomendHeaderId;

UIKIT_EXTERN NSString *const kBJXDeliveredStatusCellId;



UIKIT_EXTERN NSString *const kBJXImproperReasonCellId;


UIKIT_EXTERN NSString *const kBJXMeBlackListHeaderViewId;

UIKIT_EXTERN NSString *const kBJXMeBlackListFooterViewId;

UIKIT_EXTERN NSString *const kBJXMeBlackCompanyCellId;

UIKIT_EXTERN NSString *const  kBJXMeFocusCompanyCellId;


UIKIT_EXTERN NSString *const kBJXlanguageAbilityCellId;

UIKIT_EXTERN NSString *const kBJXMyResumeBaseInfoCellId;

UIKIT_EXTERN NSString *const kBJXMyResumeHeaderId;

UIKIT_EXTERN NSString *const kBJXMyResumeFooterId;

UIKIT_EXTERN NSString *const kBJXMyResumeDecribleCellId;

UIKIT_EXTERN NSString *const kBJXMyResumeJobIntensionCellId;

UIKIT_EXTERN NSString *const  kBJXLanguageDetailCellId;

UIKIT_EXTERN NSString *const kBJXMyLanguageAbilityCellId;

UIKIT_EXTERN NSString *const kBJXSimpleIntroduceCellId;

UIKIT_EXTERN NSString *const kBJXCompleteIntroduceCellId;

UIKIT_EXTERN NSString *const kBJXMeBasicInfoLabelCellId;

UIKIT_EXTERN NSString *const kBJXMeBasicInfoIconCellId;

UIKIT_EXTERN NSString *const kBJXMeBasicInfoTextFieldCellId;

UIKIT_EXTERN NSString *const kBJXMeLiveCityCollectionCellId;

UIKIT_EXTERN NSString *const kBJXMeLiveCityDetailCellId;

UIKIT_EXTERN NSString *const kBJXResumeMenuSectionCellId;

UIKIT_EXTERN NSString *const kBJXUserEvaluatedCellId;

UIKIT_EXTERN NSString *const kBJXWorkExperienceCellId;

UIKIT_EXTERN NSString *const kBJXWorkexperienceFooterViewId;

UIKIT_EXTERN NSString *const kBJXWorkExperienceEditCellId;

UIKIT_EXTERN NSString *const kBJXCompositeScoreCellId;

UIKIT_EXTERN NSString *const kBJXInterviewLabelCellId;

UIKIT_EXTERN NSString *const kBJXWritingReasonCellId;

UIKIT_EXTERN NSString *const kBJXInterviewEvaluationHeaderId;

UIKIT_EXTERN NSString *const kBJXNotYetInterViewTipCellId;

UIKIT_EXTERN NSString *const kBJXMeJobIntensionviewLabelCellId;
UIKIT_EXTERN NSString *const kBJXMeJobIntensionviewFooterCellId;

UIKIT_EXTERN NSString *const kBJXMeTrainExpericeCellId;

UIKIT_EXTERN NSString *const kBJXMeCertificateCellId;
UIKIT_EXTERN NSString *const kBJXResumeRecordFailCellId;

UIKIT_EXTERN NSString *const kBJXMeEducateBackgroudCellId;
UIKIT_EXTERN NSString *const kBJXMyResumeJobIntensionIndustryHeaderId;
UIKIT_EXTERN NSString *const kBJXMyResumeJobIntensionIndustryFooterCellId;
UIKIT_EXTERN NSString *const kBJXBlackListSearchCellId;
UIKIT_EXTERN NSString *const kBJXResumeRecordSuccesulCellId;

UIKIT_EXTERN NSString *const kBJXMyResumejobIntensionProvinceHeaderId;
UIKIT_EXTERN NSString *const kBJXMyResumejobIntensionProvinceFooterId;

UIKIT_EXTERN NSString *const kBJXMyResumelanguageListFooterCellId;

UIKIT_EXTERN NSString *const kBJXMecollectionJobsCellId;

UIKIT_EXTERN NSString *const kBJXUserMessageCellId;

UIKIT_EXTERN NSString *const kBJXFeedBackTableCellId;

UIKIT_EXTERN NSString *const kBJXMyResumeDesiredJobNameeCellId;
UIKIT_EXTERN NSString *const kBJXMeViewControllerMineStaticItemID;
UIKIT_EXTERN NSString *const kBJXMyResumeOutDeliverCellID;

UIKIT_EXTERN NSString *const kBJXInviteTimeAxisCellId;

UIKIT_EXTERN NSString *const kBJXDeliverNoticeCollCellId;

UIKIT_EXTERN NSString *const kBNExchangeLocationTopCellId;
UIKIT_EXTERN NSString *const kBNVipSimpleNewsCellId;
UIKIT_EXTERN NSString *const kBNDefaultShowNewsCellId;
UIKIT_EXTERN NSString *const kBNTripleImageNewsCellId;
UIKIT_EXTERN NSString *const kBNVipDefaultNewsCellId;

UIKIT_EXTERN const CGFloat kBJXInviteStatusViewHeight;

UIKIT_EXTERN const CGFloat kBJXInviteStatusViewLineHeight;

UIKIT_EXTERN const CGFloat kBJXInterviewEvaluationInsertY;

UIKIT_EXTERN const CGFloat kBJXInterviewEvaluationJobH;

UIKIT_EXTERN const CGFloat kBJXInterviewEvaluationSegmentH;

UIKIT_EXTERN const CGFloat kBJXWritingReasonCellRealHeight;


// 新改版职位举报功能
UIKIT_EXTERN NSString *const kBJXTipOffJobCellId;
UIKIT_EXTERN NSString *const kBJXTipOffOtherCellId;
UIKIT_EXTERN NSString *const kBJXCompanyAddressCellId;
UIKIT_EXTERN NSString *const kBJXJobRelatedCompanyCellId;
UIKIT_EXTERN NSString *const kBJXJobRelatedEvaluateCellId;
UIKIT_EXTERN NSString *const kBJXMoreJobEvaluateFooterId;

// ----------------------------- 北极星常用枚举 -----------------------------

typedef NS_OPTIONS(NSUInteger, BJXInviteNoteState) {
    kBJXInviteNoteStateNone = 0,    // 没有评价 也没有评论
    kBJXInviteNoteStateEvaluated = 1 << 0,  // 已经评价了
    kBJXInviteNoteStateConfirmSuccess = 1 << 1, // 已经确认 获取office
    kBJXInviteNoteStateConfirmRejected = 1 << 2 // 已经确认了 被拒绝
};

typedef NS_ENUM(NSInteger, BJXMyResumeHeaderType) {
    kBJXMyResumeHeaderTypeNone = 0,
    kBJXMyResumeHeaderTypeEdit = 1,
    kBJXMyResumeHeaderTypeAdd = 2,
};

typedef NS_ENUM(NSInteger, BJXMeBaseInfoCellType) {
    BJXMeBaseInfoCellTypeIcon = 0,
    BJXMeBaseInfoCellTypeTextField = 1,
    BJXMeBaseInfoCellTypeLabel = 2,
};

typedef NS_ENUM(NSInteger, BJXMyResumeDisplayType) {
    kBJXMyResumeDisplayTypeBaseInfo = 0, // 基本信息
    kBJXMyResumeDisplayTypeSelfAppraisal = 1, // 自我评价
    kBJXMyResumeDisplayTypeJobIntension = 2, // 工作意向
    kBJXMyResumeDisplayTypeWorkExperience = 3, // 工作经验
    kBJXMyResumeDisplayTypeEducation = 4, // 教育背景
    kBJXMyResumeDisplayTypeTrain = 5, // 培训经历
    kBJXMyResumeDisplayTypeLanguage = 6, // 语言能力
    kBJXMyResumeDisplayTypeCertificate = 7, // 所获证书
    kBJXMyResumeDisplayTypeCharacterTraits = 8, // 个人特长
};

typedef NS_ENUM(NSInteger,BJXEditTextViewType) {
    kBJXEditTextViewTypeSelfEvalute = 0,    //自我评价
    kBJXEditTextViewTypelTechnical = 1,     //技能特长
    kBJXEditTextViewTypeZhuanyeDescribe = 2,       //专业描述
    kBJXEditTextViewTypejobResponsibility = 3,   //职位职责
    kBJXEditTextViewTypeTrainDescribe = 4, //培训描述
    kBJXEditTextViewTypeDeliverRemark = 5, // 附加信息
     kBJXEditTextViewTypeDeliverCertificateDes = 6, // 证书描述
    

};

typedef NS_ENUM(NSInteger, BJXResumNavTitleType) {
    kBJXResumNavTitleTypeUniversty = 0, //毕业院校
    kBJXResumNavTitleTypeMajorName = 1, //专业名称
    kBJXResumNavTitleTypecompanyName = 2, //公司名称
    kBJXResumNavTitleTypejobPosition = 3, //所任职位
    kBJXResumNavTitleTypecompanyProperty = 4, //所在行业
    kBJXResumNavTitleTypedepartment = 5,  //所在部门
    kBJXResumNavTitleTypesalar = 6,   //职位薪水
    kBJXResumNavTitleTypeScore = 7, //考试成绩
    kBJXResumNavTitleTypedesireJob = 8, //期望从事岗位
    kBJXResumNavTitleTypedesireSalary = 9, //期望薪资
    kBJXResumNavTitleTypedesireDate= 10, //到岗时间
    kBJXResumNavTitleTypeTrainOrginization = 11,  //培训机构
    kBJXResumNavTitleTypeTrainCorse = 12, //培训课程
    kBJXResumNavTitleTypeTrainCerTificate = 13, //培训证书
    
    kBJXResumNavTitleTypeCerTificateName = 14, //所获证书
    kBJXResumNavTitleTypeCerTificateOrginization = 15, //颁发单位
    kBJXResumNavTitleTypeTrainCerPlace = 17,
    kBJXResumeNavTitleTypeDeliverAddress = 18, // 简历外发邮箱
    
    kBJXResumeNavTitleTypeDeliverJobName = 19, // 职位名称
    
};

typedef NS_ENUM(NSInteger, BJXResumePickerViewArrType) {
    
    kBJXResumePickerViewArrTypeYM = 0,  // 年月
    kBJXResumePickerViewArrTypeYMD = 1, // 年月日
    kBJXResumePickerViewArrTypeGender = 2, // 性别
    kBJXResumePickerViewArrTypeMarryed = 3, // 婚姻状况
    kBJXResumePickerViewArrTypecompontent = 4, // 民族
    kBJXResumePickerViewArrTypolityState = 5,  // 政治面貌
    kBJXResumePickerViewArrTylanguage = 6, // 语言
    kBJXResumePickerViewArrTylanguageDegree = 7, // 语言掌握程度
    kBJXResumePickerViewArrTytestDegree = 8, // 考试等级
    kBJXResumePickerViewArrTyeducation = 9, // 受教育程度
    kBJXResumePickerViewArrTypeDesireDate = 10,  // 期望到岗时间
    kBJXResumePickerViewArrTypeJobState = 11,  // 求职状态
    kBJXResumePickerVIewArrTypeOpenType = 12, // 简历公开程度
    kBJXResumePickerViewArrTypeWorkYear = 13, // 工作年限
    
};



// ------------------------------ 北极星常用的小方法 ------------------------------

#define IS_iOS8 (([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0f) ? YES : NO)

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)

#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

#define IS_IPHONE4 (([[UIScreen mainScreen] bounds].size.height == 480.0f) ? YES : NO)

#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height == 568.0f) ? YES : NO)

#define IS_IPHONE6 (([[UIScreen mainScreen] bounds].size.height == 667.0f) ? YES : NO)

#define IS_IPHONE6p (([[UIScreen mainScreen] bounds].size.height == 736.0f) ? YES : NO)

#define kCustomFixedMargin 15.0f


// ------------------------------ 北极星常用字体------------------------------
#define BJXSysFontSize(fs) [UIFont systemFontOfSize:(fs)]

#define BJXFontSize(fs) [UIFont fontWithName:@"PingFangSC-Regular" size:(fs)]

#define BJXSalaryFontSize(fs) [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:(fs)]

#define BJXBoldFontSize(bfs) [UIFont fontWithName:@"PingFangSC-Medium" size:(bfs)]

#define BJXThinFontSize(tfs) [UIFont fontWithName:@"PingFangSC-Light" size:(tfs)]

#define BJXCustomOrangeColor [UIColor colorWithRed:255.0/255.0 green:69.0/255.0 blue:1.0/255.0 alpha:1.0]

#define BJXLagoGrayColor [UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:1.0]

#define BJXLagoGrayAlphaColor(a) [UIColor colorWithRed:249.0/255.0 green:249.0/255.0 blue:249.0/255.0 alpha:(a)]

#define BJXCustomAlphaOrangeColor(a) [UIColor colorWithRed:255.0/255.0 green:69.0/255.0 blue:1.0/255.0 alpha:(a)]
// ------------------------------ 北极星常用颜色------------------------------

#define BJXColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]







// ---------------------------------电力头条 -----------------------------------

UIKIT_EXTERN NSString *const kBNewsGetTypes;











