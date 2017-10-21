//
//  BJXConstDefine.m
//  bjxjob
//
//  Created by 北极星电力 on 16/8/22.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

// ------------------------------ APP&UM相关SDK名称 -----------------------------

NSString *const kBJXHrSecretKey = @"+Bj*Hr20170802";

NSString *const kAppStoreAppId = @"1148282336";

NSString *const kBJXUMAppKey = @"578f39dde0f55a98d1000405";

NSString *const kBJXUMMasterSecret = @"4q88lxjq6c5xwzvsc967hoaaafqx6cjo";

NSString *const kBJXQQAppKey = @"1105580029";

NSString *const kBJXWeChatAppKey = @"wx72931bc6d8677885";

NSString *const kBJXWeChatAppSecret = @"a0d948801b9c4032a9b62f74d9610a18";

NSString *const kBJXSinaAppkey = @"3843264107";

NSString *const kBJXSinaAppSecret = @"df1c6173b40f321582ddf56385de0f6d";

// ------------------------------ 北极星通知名称 -----------------------------
NSString *const kBJXUserUnReadInviteCountChange = @"kBJXUserUnReadInviteCountChange";  // 未读面试消息数通知
NSString *const kBJXHomeAlreadyCheckInviteStatus = @"kBJXHomeAlreadyCheckInviteStatus"; // 首页已经检测完了面试通知的状态
NSString *const kBJXLaunchJumpBtnDidTap = @"kBJXLaunchJumpBtnDidTap";
NSString *const kBJXLaunchWebViewDidDisappear = @"kBJXLaunchWebViewDidDisappear";
NSString *const kBJXNewsGetActiveNotification = @"kBJXNewsGetActiveNotification";
NSString *const kBJXLoginSuccessNotification = @"LoginSuccessNotification";
NSString *const kBJXLogoutSuccessNotification = @"LogoutSuccessNotification";
NSString *const kBJXBindAccountUnExistNote = @"kBJXBindAccountUnExistNote";
NSString *const kBJXAnnouncementSelectedClassNote = @"AnnouncementSelectedClassNote";
NSString *const kBJXPowerNewsSelectedClassNote = @"kBJXPowerNewsSelectedClassNote";

NSString *const kBJXInviteSelectedStatusNote = @"InviteSelectedStatusNote";
NSString *const kBJXAttentionPostionStatusChange = @"AttentionPostionStatusChangeNote";
NSString *const kBJXAttentionCompanyStatusChange = @"AttentionCompanyStatusChangeNote";
NSString *const kBJXNoReadMessageNotification = @"kBJXNoReadMessageNotification";   // 未读消息
NSString *const kBjXUserCurrentLocation = @"kBjXUserCurrentLocation";

// ------------------------------ 北极星常用常量------------------------------
NSString *const kBJXHomeRPCollItemID = @"HomeRPCollItemID";
NSString *const kBJXUserMessagePath = @"userNewMessages.sqlite";
NSString *const kBJXOurNoticeCellId = @"kBJXOurNoticeCellId";
NSString *const kBJXUserHeadImageLocalPath = @"userIconImage.data";
NSString *const kBJXResumeDeliverySuccessHudItemId = @"DeliverySuccessRJItemID";
NSString *const kBJXUserInviteHandleCellId = @"kBJXUserInviteHandleCellId";
NSString *const kBJXInviteStatusCollectionCellId = @"inviteStatusCollectCellID";
NSString *const kBJXInviteRecomendHeaderId = @"kBJXInviteRecomendHeaderId";
NSString *const kBJXDeliveredStatusCellId = @"kBJXDeliveredStatusCellId";
NSString *const kBJXImproperReasonCellId = @"kBJXImproperReasonCellId";

NSString *const kBJXMeBlackListHeaderViewId = @"kBJXMeBlackListHeaderViewId";
NSString *const kBJXMeBlackListFooterViewId = @"kBJXMeBlackListFooterViewId";
NSString *const kBJXMeBlackCompanyCellId = @"kBJXMeBlackCompanyCellId";
NSString *const kBJXMeFocusCompanyCellId = @"kBJXMeFocusCompanyCellId";
NSString *const kBJXlanguageAbilityCellId = @"kBJXlanguageAbilityCellId";
NSString *const kBJXMyResumeBaseInfoCellId = @"kBJXMyResumeBaseInfoCellId";
NSString *const kBJXMyResumeHeaderId = @"kBJXMyResumeHeaderId";
NSString *const kBJXMyResumeFooterId = @"kBJXMyResumeFooterId";
NSString *const kBJXMyResumeDecribleCellId = @"kBJXMyResumeDecribleCellId";
NSString *const kBJXMyResumeJobIntensionCellId = @"kBJXMyResumeJobIntensionCellId";

NSString *const kBJXLanguageDetailCellId = @"BJXLanguageDetailCellId";

NSString *const kBJXMyLanguageAbilityCellId = @"kBJXMyLanguageAbilityCellId";

NSString *const kBJXMeBasicInfoLabelCellId = @"kBJXMeBasicInfoLabelCellId";

NSString *const kBJXMeBasicInfoIconCellId = @"kBJXMeBasicInfoIconCellId";

NSString *const kBJXMeBasicInfoTextFieldCellId = @"kBJXMeBasicInfoTextFieldCellId";

NSString *const kBJXSimpleIntroduceCellId = @"kBJXSimpleIntroduceCellId";

NSString *const kBJXCompleteIntroduceCellId = @"kBJXCompleteIntroduceCellId";


NSString *const kBJXMeLiveCityCollectionCellId = @"kBJXMeLiveCityCollectionCellId";

NSString *const kBJXMeResumeSegmentWillShow = @"kBJXMeResumeSegmentWillShow";


NSString *const kBJXMeLiveCityDetailCellId = @"kBJXMeLiveCityDetailCellId";

NSString *const kBJXResumeMenuSectionCellId = @"kBJXResumeMenuSectionCellId";

NSString *const kBJXUserEvaluatedCellId = @"kBJXUserEvaluatedCellId";

NSString  *const kBJXWorkExperienceCellId = @"kBJXWorkExperienceCellId";

NSString  *const kBJXWorkexperienceFooterViewId = @"kBJXWorkexperienceFooterViewId";

NSString  *const kBJXWorkExperienceEditCellId = @"kBJXWorkExperienceEditCellId";

NSString *const kBJXCompositeScoreCellId = @"kBJXCompositeScoreCellId";

NSString *const kBJXInterviewLabelCellId = @"kBJXInterviewLabelCellId";

NSString *const kBJXWritingReasonCellId = @"kBJXWritingReasonCellId";

NSString *const kBJXInterviewEvaluationHeaderId = @"kBJXInterviewEvaluationHeaderId";

NSString *const kBJXNotYetInterViewTipCellId = @"kBJXNotYetInterViewTipCellId";

NSString *const kBJXMeJobIntensionviewLabelCellId = @"kBJXMeJobIntensionviewLabelCellId";
NSString *const kBJXMeJobIntensionviewFooterCellId = @"kBJXMeJobIntensionviewFooterCellId";
NSString *const kBJXMeTrainExpericeCellId = @"kBJXMeTrainExpericeCellId";

NSString *const kBJXMeCertificateCellId = @"kBJXMeCertificateCellId";
NSString *const kBJXResumeRecordFailCellId = @"kBJXResumeRecordFailCellId";
NSString *const kBJXResumeRecordSuccesulCellId = @"kBJXResumeRecordSuccesulCellId";

NSString *const kBJXMeEducateBackgroudCellId = @"kBJXMeEducateBackgroudCellId";
NSString *const kBJXMyResumeJobIntensionIndustryFooterCellId = @"kBJXMyResumeJobIntensionIndustryFooterCellId";

NSString *const kBJXMyResumeJobIntensionIndustryHeaderId = @"kBJXMyResumeJobIntensionIndustryHeaderId";

NSString *const kBJXMyResumejobIntensionProvinceHeaderId = @"kBJXMyResumejobIntensionProvinceHeaderId";
NSString *const kBJXMyResumejobIntensionProvinceFooterId = @"kBJXMyResumejobIntensionProvinceFooterId";
NSString *const kBJXMyResumelanguageListFooterCellId = @"kBJXMyResumelanguageListFooterCellId";

NSString *const kBJXMecollectionJobsCellId = @"kBJXMecollectionJobsCellId";

NSString *const kBJXUserMessageCellId = @"kBJXUserMessageCellId";
NSString *const  kBJXBlackListSearchCellId = @"kBJXBlackListSearchCellId";

NSString *const kBJXFeedBackTableCellId = @"kBJXFeedBackTableCellId";

NSString *const kBJXMyResumeDesiredJobNameeCellId = @"kBJXMyResumeDesiredJobNameeCellId";
NSString *const kBJXMeViewControllerMineStaticItemID = @"kBJXMeViewControllerMineStaticItemID";

NSString *const kBJXMyResumeOutDeliverCellID = @"kBJXMyResumeOutDeliverCellID";

NSString *const kBJXInviteTimeAxisCellId = @"kBJXInviteTimeAxisCellId";

NSString *const kBJXDeliverNoticeCollCellId = @"kBJXDeliverNoticeCollCellId";
NSString *const kBNExchangeLocationTopCellId = @"kBNExchangeLocationTopCellId";
NSString *const kBNVipSimpleNewsCellId = @"kBNVipSimpleNewsCellId";
NSString *const kBNDefaultShowNewsCellId = @"kBNDefaultShowNewsCellId";
NSString *const kBNTripleImageNewsCellId = @"kBNTripleImageNewsCellId";
NSString *const kBNVipDefaultNewsCellId = @"kBNVipDefaultNewsCellId";


const CGFloat kBJXInviteStatusViewHeight = 41.0f;
const CGFloat kBJXInviteStatusViewLineHeight = 2.0f;
const CGFloat kBJXInterviewEvaluationInsertY = 138.0f;
const CGFloat kBJXInterviewEvaluationJobH = 93.0f;
const CGFloat kBJXInterviewEvaluationSegmentH = 45.0f;
const CGFloat kBJXWritingReasonCellRealHeight = 270.0f;

// 新改版职位举报功能
NSString *const kBJXTipOffJobCellId = @"kBJXTipOffJobCellId";
NSString *const kBJXTipOffOtherCellId = @"kBJXTipOffOtherCellId";
NSString *const kBJXCompanyAddressCellId = @"kBJXCompanyAddressCellId";
NSString *const kBJXJobRelatedCompanyCellId = @"kBJXJobRelatedCompanyCellId";
NSString *const kBJXJobRelatedEvaluateCellId = @"kBJXJobRelatedEvaluateCellId";
NSString *const kBJXMoreJobEvaluateFooterId = @"kBJXMoreJobEvaluateFooterId";

// ----------------------电力头条------------------
NSString *const kBNewsGetTypes = @"api/News/GetAllChannel";

