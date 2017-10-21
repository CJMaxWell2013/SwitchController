//
//  BJXHttpConst.m
//  bjxjob
//
//  Created by 北极星电力 on 16/8/22.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

// ------------------------------ 启动页数量 ------------------------------
NSString *const kBJXLaunchingCount = @"SystemManage/APP_GuidanceStatic";

NSString *const KBJXGetMyDeliverCount = @"ResumeManage/GetMyDeliverCount";

NSString *const kBJXGetAPPCityData = @"SystemManage/GetAPPCityData";

// ------------------------------ 分享跟踪记录 -----------------------------

NSString *const kBJXAccountShareRecord = @"Account/APP_ShareRecord";

// ------------------------------ 网络状态改变通知 -----------------------------
NSString *const kBJXReachabilityStatusChange = @"BJXReachabilityStatusChange";
/**
 *  接口异常报错
 */
NSString *const kBJXNetPortErrorRecourd = @"SystemManage/ErrorRecourd";


// ------------------------------ 服务器地址 -----------------------------
// NSString *const kBJXServerAddress = @"http://company.bjx.com.cn:8090";
#ifdef DEBUG
NSString *const kBJXServerAddress = @"https://wechat.bjx.com.cn";
#else
NSString *const kBJXServerAddress = @"https://wechat.bjx.com.cn";
#endif

// 版本检测接口
NSString *const kBJXUpdateAppPortAddress = @"SystemManage/GetAppVersions";

// ------------------------------ 登录注册 -----------------------------

/**
 *  http://wechat.bjx.com.cn/Account/APP_Logion?userphone=17319238840&userpwd=2&OperationSource=3
 */
NSString *const kBJXAccountLogion = @"Account/APP_Logion";

/**
 *  http://wechat.bjx.com.cn/Account/APP_ExitLogin
 */
NSString *const kBJXAccountExitLogin = @"Account/APP_ExitLogin";
/**
 *  http://wechat.bjx.com.cn/Account/APP_Register?userphone=17319238840&userpwd=3&OperationSource=3
 */
NSString *const kBJXAccountRegister = @"Account/APP_Register";
/**
 *  http://wechat.bjx.com.cn/Account/ APP_SendCodeSMS?userphone=17319238840
 */
NSString *const kBJXAccountSendCodeSMS = @"Account/APP_SendCodeSMS";

NSString *const kBJXAccountUserAccoutExist = @"Account/UserAccountExit";

NSString *const kBJXUserAccountBinding = @"Account/APP_AccountBinding";


// ------------------------------ 获取广告 -----------------------------
NSString *const kBJXObtainAdvertisement = @"SystemManage/GetAdHomeData";

// ------------------------------ 分类下的广告 -----------------------------
NSString *const kBJXSMGetAdClassData = @"SystemManage/GetAdClassData";

/**
 *  绑定邮箱 -- Announcement/APP_BindingEmail
 */
NSString *const kBJXBindingEmail = @"Account/APP_BindingEmail";

NSString *const KBJXBindingUserToken = @"UserManage/BindingUserToken";

NSString *const kBJXGetAdAppStart = @"SystemManage/GetAdAppStart";

NSString *const kBJXNoReadMessageList = @"UserManage/NoReadMessageList";

NSString *const kBJXUserReadMessage = @"UserManage/ReadMessage";

NSString *const kBJXGetUserFeedbackData = @"SystemManage/GetUserFeedbackData";

NSString *const kBJXSubmitUserFeedbackData = @"SystemManage/Submit_UserFeedbackData";

NSString *const kBJXAccountUpdatePwd = @"Account/App_UpdatePwd";

NSString *const kBJXSendCodeEmailPort = @"Account/APP_SendCodeEmail";

NSString *const KBJXSubmitUserPhone = @"UserManage/Submit_UserPhone";

NSString *const kBJXSubmitUserEmail = @"UserManage/Submit_UserEmail";

NSString *const kBJXUserReadMessageBatch = @"UserManage/ReadMessageBatch";

// ------------------------------ 个人信息 & 简历投递 -----------------------------
NSString *const kBJXResumePhoneCheck = @"UserManage/Submit_ResumePhoneCheck";
NSString *const kBJXResumeEmailCheck = @"Submit_ResumeEmailCheck";


/**
 *  第三方登录预先调用接口//Account/ APP_OptherLogin? ClienType
 */
NSString *const kBJXAccountOtherLogin = @"Account/APP_OtherLogin";

/**
 *  绑定微信接口 -- 提交数据返回 user id
 */
NSString *const kBJXBindWinXinUserInfo = @"Account/APP_WXDataSubmit";

NSString *const kBJXBindQQUserInfo = @"Account/APP_QQDataSubmit";

NSString *const kBJXBindWinBoUserInfo = @"Account/APP_WBDataSubmit";

/**
 *  获取我的个人信息 -- 查询头像，名称，求职状态，以及最后一份工作和岗位信息
 */
NSString *const kBJXGetMyData = @"ResumeManage/GetMyData";
/**
 *  设置默认简历
 */
NSString *const kBJXSetDefaultResume = @"ResumeManage/SetDefaultResume";
/**
 *  查询默认简历
 */
NSString *const kBJXGetMyDefaultResume = @"ResumeManage/GetMyDefaultResume";


NSString *const kBJXUserRefreshResume = @"ResumeManage/User_RefreshResume_ALL";
/**
 单个简历的刷新接口
 */
NSString *const kBJXUserSingleResumeRefresh = @"ResumeManage/User_RefreshResume";

NSString *const kBJXUserTransmitResume = @"ResumeManage/TransmitResume";

NSString *const kBJXResumeCompleteStatus = @"ResumeManage/GetResumeIntegrityValue";

// ------------------------------ 首页页面 -----------------------------
NSString *const kBJXHomeGetCarouselJob = @"Home/APP_GetCarouselJob";
NSString *const kBJXHomeGetRecomendJob = @"Home/APP_GetRecomendJob";
/**
 *  首页 - 校园招聘 -- 广告接口地址
 */
NSString *const kBJXGetAdCampusRecruitmentData = @"SystemManage/GetAdCampusRecruitmentData";

/**
 *  首页 - 校园招聘 -- 推荐公告地址
 */
NSString *const kBJXGetCampusRecruitmentAnnouncement = @"Home/APP_GetCampusRecruitmentAnnouncement";

/**
 *  首页 - 校园招聘 -- 推荐职位地址
 */
NSString *const kBJXGetCampusRecruitmentRecomendJob = @"Home/APP_GetCampusRecruitmentRecomendJob";
/**
 *  首页 - 电力猎头 -- 描述内容数据
 */
NSString *const kBJXGetHeadhuntingDescribe = @"Home/APP_GetHeadhuntingDescribe";

/**
 *  首页 - 电力猎头 -- 推荐职位数据
 */
NSString *const kBJXGetHeadhuntingRecomendJob = @"Home/APP_GetHeadhuntingRecomendJob";
/**
 *  首页 - 微招聘接口 Home/APP_GetMicroRecruitmentData
 */
NSString *const kBJXGetMicroRecruitmentData = @"Home/APP_GetMicroRecruitmentData";


// ------------------------------ 搜索端口地址部分 -----------------------------
NSString *const kBJXGetKeywordCompany = @"JobManage/APP_GetKeywordCompany";
NSString *const kBJXJobManageSearchKeyWord = @"JobManage/APP_SearchKeyWord";
NSString *const kBJXJobManageGetHotKeyWord = @"JobManage/APP_GetHotKeyWord";
NSString *const kBJXGetUserSearchRecord = @"JobManage/APP_GetUserSearchRecord";
NSString *const kBJXGetHotCity = @"JobManage/APP_GetHotCity";
NSString *const kBJXGetSearchList = @"JobManage/APP_SearchList";
NSString *const kBJXGetJobBaseData = @"JobManage/APP_GetJobBaseData";
NSString *const kBJXGetJobRecommendation = @"JobManage/APP_JobRecommendation";
NSString *const kBJXGetCompanyBaseData = @"JobManage/APP_GetCompanyBaseData";
NSString *const kBJXDetailAttentionCompany = @"JobManage/APP_AttentionCompany";
NSString *const kBJXDetailAttentionJob = @"JobManage/APP_CollectJob";
NSString *const kBJXDeliverMineResume = @"JobManage/APP_JobDeliver";
NSString *const kBJXJobCorrelationDeliver = @"JobManage/APP_JobCorrelationDeliver";




// ---------------- 公告 ----------------
/**
 公告 -- 公告分类列表
 */
NSString *const kBJXGetClassAnnouncent = @"Announcement/App_GetClassAnnouncent";
/**
 公告 -- 分类下的公告列表
 */
NSString *const kBJXGetClassAnnouncentContent = @"Announcement/App_GetClassAnnouncentContent";


/**
    公告 -- 设置公告 -- Announcement/APP_SetMyClassAnmouncent
 */
NSString *const kBJXSetMyClassAnmouncent = @"Announcement/APP_SetMyClassAnmouncent";
/**
    公告 -- 删除公告 -- Announcement/APP_DeleteMyClassAnmouncent
 */
NSString *const kBJXDeleteMyClassAnmouncent = @"Announcement/APP_DeleteMyClassAnmouncent";


/**
 公告 -- 获取详情 -- Announcement/APP_GetAnnouncentDeail
 */
NSString *const kBJXGetAnnouncentDeail = @"Announcement/APP_GetAnnouncentDeail";
/**
  公告 -- 获取详情 -- 留言 -- 点赞接口 -- Announcement/APP_GetAnnouncentDeail_Like
 */
NSString *const kBJXGetAnnouncentDeailLeaveMessageLike = @"Announcement/APP_GetAnnouncentDeail_LeaveMessage_Like";

/**
 公告 -- 获取详情 -- 留言提交接口 -- Announcement/App_App_AnnouncementAddLeave
 */
NSString *const kBJXAnnouncementAddLeave = @"Announcement/App_AnnouncementAddLeave";
/**
 公告 -- 获取详情 -- 留言查询接口-- Announcement /APP_GetAnnouncentDeail_LeaveMessage
 */
NSString *const kBJXGetAnnouncentDeailLeaveMessage = @"Announcement/APP_GetAnnouncentDeail_LeaveMessage";
/**
 公告 -- 公告详情 -- 点赞接口-- Announcement /APP_GetAnnouncentDeail_LeaveMessage
 */
NSString *const kBJXGetAnnouncentDeailLike = @"Announcement/APP_GetAnnouncentDeail_Like";


/**
 公告 -- 公告的广告 -- SystemManage/GetAdAnnouncementData
 */
NSString *const kBJXAnmouncentAdvertData = @"SystemManage/GetAdAnnouncementData";


/**
 公告 -- 获取详情 -- 留言回复提交 -- Announcement/App_AnnouncementAddLeaveReply
 */
NSString *const kBJXAnnouncementAddLeaveReply = @"Announcement/App_AnnouncementAddLeaveReply";

/**
 公告 -- 获取详情 -- 公告回复查询 -- Announcement/APP_GetAnnouncen_LeaveReplyMessage
 */
NSString *const kBJXGetAnnouncenLeaveReplyMessage = @"Announcement/APP_GetAnnouncen_LeaveReplyMessage";







// ---------------- 分类 ----------------
NSString *const kBJXGetAPPClass = @"ClassManage/APP_GetClass";
NSString *const kBJXGetIndustry = @"JobManage/APP_GetWhereIndustry";
NSString *const kBJXGetClassHotJob = @"ClassManage/APP_GetHotJob";
NSString *const kBJXGetClassHotCompany = @"ClassManage/APP_GetHotCompany";
NSString *const kBJXGetClassShippingJob = @"ClassManage/APP_GetShippingJob";

// ------------------------------ 我的 ------------------------------

NSString *const kBJXExpectJobState = @"/ResumeManage/SetUsereApplyJobState";
NSString *const kBJXGetCompanyReadRecord = @"UserManage/GetCompanyReadRecord";


NSString *const kBJXGetMyCollectJob = @"UserManage/GetMyCollectJob";

NSString *const kBJXGetollowCoverCompany = @"UserManage/Getollow_Cover_Company";


NSString *const kBJXGetCompanyShielding = @"UserManage/GetCompanyShielding";

NSString *const kBJXSubmitCompanyShielding = @"UserManage/Submit_CompanyShielding";

NSString *const kBJXDeletCompanyShielding = @"UserManage/Delete_CompanyShielding";

NSString *const  kBJXGetCompanyLike = @"UserManage/GetCompanyLike";

NSString *const kBJXGetJobInviteRecord = @"UserManage/Get_JobInviteRecord";





// ------------------------------ 我的简历端口地址部分 ------------------------------

NSString *const kBJXUserGetResumeList = @"ResumeManage/User_GetResumeList";

NSString *const kBJXUserGetResumeDetailBasic = @"ResumeManage/User_GetResumeDeail_Basic";

NSString *const kBJXUpdateResumeDetailBasic = @"ResumeManage/User_UpdateResumeBasic";

NSString *const kBJXUpdateSelfAssessment = @"ResumeManage/User_Update_SelfAssessment";

NSString *const kBJXUpdateSkillDescribe = @"ResumeManage/User_Update_SkillDescribe";

NSString *const kBJXUpdateResumeBegPosition = @"ResumeManage/User_UpdateResume_BegPosition";

NSString *const kBJXGetResumeWorkExperience = @"ResumeManage/User_GetResumeDeail_Experience";

NSString *const kBJXGetResumeEducationExperience = @"ResumeManage/User_GetResumeDeail_Education";

NSString *const kBJXGetResumeTrainExperience = @"ResumeManage/User_GetResumeDeail_Train";

NSString *const kBJXGetResumeLanguageAbility = @"ResumeManage/User_GetResumeDeail_Language";

NSString *const kBJXGetResumeCertificate = @"ResumeManage/User_GetResumeDeail_Certificate";

NSString *const kBJXUpdateResumeEducation = @"ResumeManage/User_Education_Update";

NSString *const kBJXDeletedateResumeEducation = @"ResumeManage/User_Education_Delete";
// 工作经历
NSString *const kBJXUpdateResumeWorkExperience = @"ResumeManage/User_Experience_Update";

NSString *const kBJXDeleteResumeWorkExperience = @"ResumeManage/User_Experience_Delete";

NSString *const kBJXUpdateResumeTrain = @"ResumeManage/User_Train_Update";

NSString *const kBJXDeleteResumeTrain = @"ResumeManage/User_Train_Delete";

NSString *const kBJXUpdateResumeLanguage = @"ResumeManage/User_Language_Update";

NSString *const kBJXDeleteResumeLanguage = @"ResumeManage/User_Language_Delete";

NSString *const kBJXUpdateResumeCertificate = @"ResumeManage/User_Certificate_Update";

NSString *const kBJXDeleteResumeCertificate= @"ResumeManage/User_Certificate_Delete";

NSString *const kBJXResumeUpdateHeadImg = @"ResumeManage/User_UpdateHeadImg";


// -------------------------------- 面试投递 ----------------------------

NSString *const kBJXInviteGetMyDeliverRecord = @"ResumeManage/GetMyDeliverRecord";

NSString *const kBJXInviteGetDeliverDetail = @"ResumeManage/DeliverDeail";

NSString *const kBJXUserDeliverAffirmOffer = @"ResumeManage/UserDeliverAffirmOffer";

NSString *const kBJXUserDeliverDefaultLable = @"ResumeManage/UserDeliverDefaultLable";

NSString *const kBJXUserDeliverSubmitEvaluate = @"ResumeManage/UserDeliverSubmitEvaluate";

NSString *const kBJXUserDeliverEvaluateRecord = @"ResumeManage/UserDeliverEvaluateRecord";

NSString *const kBJXGetUserRelevantJob = @"ResumeManage/GetUserRelevantJob";



// ------------------------------ 电力头条服务器地址 -----------------------------
#ifdef DEBUG
NSString *const kBNServerAddress = @"http://api.dltoutiao.com";
#else
NSString *const kBNServerAddress = @"http://api.dltoutiao.com";
#endif

NSString *const kBNGetTypesNewsList = @"api/News/GetNewsList";
NSString *const kBNGetRollPicturePort = @"api/News/GetRollPicV1";
NSString *const KBJXLocationNewsApi = @"api/News/AddressNews";
