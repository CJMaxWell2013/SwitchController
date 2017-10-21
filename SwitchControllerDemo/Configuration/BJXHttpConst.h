//
//  BJXHttpConst.h
//  bjxjob
//
//  Created by 北极星电力 on 16/8/22.
//  Copyright © 2016年 DongLiHuoChe. All rights reserved.
//

#import <UIKit/UIKit.h>

// ------------------------------ 启动页数量 ------------------------------
UIKIT_EXTERN NSString *const kBJXLaunchingCount;

UIKIT_EXTERN NSString *const KBJXGetMyDeliverCount;

UIKIT_EXTERN NSString *const kBJXGetAPPCityData;

// ------------------------------ 分享跟踪记录 -----------------------------
UIKIT_EXTERN NSString *const kBJXAccountShareRecord;

// ------------------------------ 网络状态改变通知 -----------------------------
/**
 *  网络状态发生改变
 */
UIKIT_EXTERN NSString *const kBJXReachabilityStatusChange;

/**
 *  接口异常报错
 */
UIKIT_EXTERN NSString *const kBJXNetPortErrorRecourd;

// 版本检测接口
UIKIT_EXTERN NSString *const kBJXUpdateAppPortAddress;


// ------------------------------ 服务器地址 -----------------------------
UIKIT_EXTERN NSString *const kBJXServerAddress;

// ------------------------------ 登录注册 -----------------------------
/**
 *  登录接口
 */
UIKIT_EXTERN NSString *const kBJXAccountLogion;
/**
 *  退出登录
 */
UIKIT_EXTERN NSString *const kBJXAccountExitLogin;
/**
 *  注册接口
 */
UIKIT_EXTERN NSString *const kBJXAccountRegister;
/**
 *  发送验证码
 */
UIKIT_EXTERN NSString *const kBJXAccountSendCodeSMS;

/**
 *  检查
 */
UIKIT_EXTERN NSString *const kBJXAccountUserAccoutExist;

UIKIT_EXTERN NSString *const kBJXUserAccountBinding;

/**
 *  绑定邮箱 -- Announcement/APP_BindingEmail
 */
UIKIT_EXTERN NSString *const kBJXBindingEmail;

UIKIT_EXTERN NSString *const KBJXBindingUserToken;

UIKIT_EXTERN NSString *const kBJXGetAdAppStart;

UIKIT_EXTERN NSString *const kBJXNoReadMessageList;

UIKIT_EXTERN NSString *const kBJXUserReadMessage;

UIKIT_EXTERN NSString *const kBJXGetUserFeedbackData;

UIKIT_EXTERN NSString *const kBJXSubmitUserFeedbackData;

UIKIT_EXTERN NSString *const kBJXAccountUpdatePwd;

UIKIT_EXTERN NSString *const kBJXSendCodeEmailPort;

UIKIT_EXTERN NSString *const KBJXSubmitUserPhone;

UIKIT_EXTERN NSString *const kBJXSubmitUserEmail;

// ------------------------------ 个人信息 & 简历投递 -----------------------------

// 个人简历手机号码验证
UIKIT_EXTERN NSString *const kBJXResumePhoneCheck;
// 个人简历邮箱验证
UIKIT_EXTERN NSString *const kBJXResumeEmailCheck;

/**
 *  第三方登录预先调用接口//Account/ APP_OptherLogin? ClienType
 */
UIKIT_EXTERN NSString *const kBJXAccountOtherLogin;


/**
 *  绑定微信接口 -- 提交数据返回 user id
 */
UIKIT_EXTERN NSString *const kBJXBindWinXinUserInfo;

UIKIT_EXTERN NSString *const kBJXBindQQUserInfo;

UIKIT_EXTERN NSString *const kBJXBindWinBoUserInfo;


/**
 *  获取我的个人信息 -- 查询头像，名称，求职状态，以及最后一份工作和岗位信息
 */
UIKIT_EXTERN NSString *const kBJXGetMyData;
/**
 *  设置默认简历
 */
UIKIT_EXTERN NSString *const kBJXSetDefaultResume;
/**
 *  查询默认简历
 */
UIKIT_EXTERN NSString *const kBJXGetMyDefaultResume;

UIKIT_EXTERN NSString *const kBJXUserRefreshResume;
/**
 *  单个简历的刷新接口
 */
UIKIT_EXTERN NSString *const kBJXUserSingleResumeRefresh;


UIKIT_EXTERN NSString *const kBJXUserTransmitResume; // 简历外发

UIKIT_EXTERN NSString *const kBJXResumeCompleteStatus;

UIKIT_EXTERN NSString *const kBJXUserReadMessageBatch;

// ------------------------------ 获取广告 -----------------------------

UIKIT_EXTERN NSString *const kBJXObtainAdvertisement;

// ------------------------------ 分类下的广告 -----------------------------
UIKIT_EXTERN NSString *const kBJXSMGetAdClassData;


// ------------------------------ 首页页面 -----------------------------
/**
 *  首页 - 职位推荐轮播
 */
UIKIT_EXTERN NSString *const kBJXHomeGetCarouselJob;
/**
 *  首页 - 职位推荐底部岗位
 */
UIKIT_EXTERN NSString *const kBJXHomeGetRecomendJob;


/**
 *  首页 - 校园招聘 -- 广告接口地址
 */
UIKIT_EXTERN NSString *const kBJXGetAdCampusRecruitmentData;

/**
 *  首页 - 校园招聘 -- 推荐公告地址
 */
UIKIT_EXTERN NSString *const kBJXGetCampusRecruitmentAnnouncement;

/**
 *  首页 - 校园招聘 -- 推荐职位地址
 */
UIKIT_EXTERN NSString *const kBJXGetCampusRecruitmentRecomendJob;
/**
 *  首页 - 电力猎头 -- 描述内容数据
 */
UIKIT_EXTERN NSString *const kBJXGetHeadhuntingDescribe;
/**
 *  首页 - 电力猎头 -- 推荐职位数据
 */
UIKIT_EXTERN NSString *const kBJXGetHeadhuntingRecomendJob;
/**
 *  首页 - 微招聘接口 Home/APP_GetMicroRecruitmentData
 */
UIKIT_EXTERN NSString *const kBJXGetMicroRecruitmentData;

// ------------------------------ 搜索端口地址部分 -----------------------------

/**
 *  职位搜索 - 公司搜索
 */
UIKIT_EXTERN NSString *const kBJXGetKeywordCompany;
/**
 *  职位搜索 - 关键词接口
 */
UIKIT_EXTERN NSString *const kBJXJobManageSearchKeyWord;
/**
 *  职位搜索 - 热门关键词
 */
UIKIT_EXTERN NSString *const kBJXJobManageGetHotKeyWord;
/**
 *  职位搜索 - 搜索记录
 */
UIKIT_EXTERN NSString *const kBJXGetUserSearchRecord;
/**
 *  职位搜索 - 热门城市
 */
UIKIT_EXTERN NSString *const kBJXGetHotCity;
/**
 *  职位搜索 - 搜索列表
 */
UIKIT_EXTERN NSString *const kBJXGetSearchList;
/**
 *  职位搜索 - 职位详情
 */
UIKIT_EXTERN NSString *const kBJXGetJobBaseData;
/**
 *  职位搜索 - 职位详情 - 岗位推荐
 */
UIKIT_EXTERN NSString *const kBJXGetJobRecommendation;
/**
 *  职位搜索 - 职位详情 - 投递简历
 */
UIKIT_EXTERN NSString *const kBJXDeliverMineResume;
/**
 *  职位搜索 - 职位详情 - 关联简历
 */
UIKIT_EXTERN NSString *const kBJXJobCorrelationDeliver;

/**
 *  职位搜索 - 公司详情
 */
UIKIT_EXTERN NSString *const kBJXGetCompanyBaseData;
/**
 *  公司详情 - 关注公司
 */
UIKIT_EXTERN NSString *const kBJXDetailAttentionCompany;
/**
 *  公司详情 - 关注工作
 */
UIKIT_EXTERN NSString *const kBJXDetailAttentionJob;




// ------------------------------ 公告端口地址部分 -----------------------------

/**
 *  获取公告分类
 */
UIKIT_EXTERN NSString *const kBJXGetClassAnnouncent;
/**
 *  获取公告分类下的内容
 */
UIKIT_EXTERN NSString *const kBJXGetClassAnnouncentContent;

/**
    公告 -- 设置公告 -- Announcement/APP_SetMyClassAnmouncent
 */
UIKIT_EXTERN NSString *const kBJXSetMyClassAnmouncent;
/**
    公告 -- 删除公告 -- Announcement/APP_DeleteMyClassAnmouncent
 */
UIKIT_EXTERN NSString *const kBJXDeleteMyClassAnmouncent;

/**
 公告 -- 公告的广告 -- SystemManage/GetAdAnnouncementData
 */
UIKIT_EXTERN NSString *const kBJXAnmouncentAdvertData;


/**
 公告 -- 获取详情 -- Announcement/APP_GetAnnouncentDeail
 */
UIKIT_EXTERN NSString *const kBJXGetAnnouncentDeail;
/**
 公告 -- 公告详情 -- 点赞接口-- Announcement /APP_GetAnnouncentDeail_LeaveMessage
 */
UIKIT_EXTERN NSString *const kBJXGetAnnouncentDeailLike;


/**
 公告 -- 获取详情 -- 留言提交接口 -- Announcement/App_App_AnnouncementAddLeave
 */
UIKIT_EXTERN NSString *const kBJXAnnouncementAddLeave;
/**
 公告 -- 获取详情 -- 留言查询接口-- Announcement /APP_GetAnnouncentDeail_LeaveMessage
 */
UIKIT_EXTERN NSString *const kBJXGetAnnouncentDeailLeaveMessage;
/**
 公告 -- 获取详情 -- 留言 -- 点赞接口 -- Announcement/APP_GetAnnouncentDeail_Like
 */
UIKIT_EXTERN NSString *const kBJXGetAnnouncentDeailLeaveMessageLike;



/**
 公告 -- 获取详情 -- 留言回复提交 -- Announcement/App_AnnouncementAddLeaveReply
 */
UIKIT_EXTERN NSString *const kBJXAnnouncementAddLeaveReply;

/**
 公告 -- 获取详情 -- 公告回复查询 -- Announcement/APP_GetAnnouncen_LeaveReplyMessage
 */
UIKIT_EXTERN NSString *const kBJXGetAnnouncenLeaveReplyMessage;


// ------------------------------ 分类端口地址部分 ------------------------------

/**
 *  app的分类
 */
UIKIT_EXTERN NSString *const kBJXGetAPPClass;

UIKIT_EXTERN NSString *const kBJXGetIndustry;
/**
 *  热门岗位
 */
UIKIT_EXTERN NSString *const kBJXGetClassHotJob;
/**
 *  热门岗位
 */
UIKIT_EXTERN NSString *const kBJXGetClassHotCompany;
/**
 *  急聘岗位
 */
UIKIT_EXTERN NSString *const kBJXGetClassShippingJob;
// ------------------------------ 我的 ------------------------------

UIKIT_EXTERN NSString *const kBJXExpectJobState; // 求职状态的接口

UIKIT_EXTERN NSString *const kBJXGetCompanyReadRecord; // 谁看过我的简历
UIKIT_EXTERN NSString *const kBJXGetDeliverRecord;   // 我的投递记录

UIKIT_EXTERN NSString *const kBJXGetMyCollectJob;

UIKIT_EXTERN NSString *const kBJXGetollowCoverCompany;

UIKIT_EXTERN NSString *const kBJXGetCompanyShielding;

UIKIT_EXTERN NSString *const kBJXSubmitCompanyShielding;

UIKIT_EXTERN NSString *const kBJXDeletCompanyShielding;

UIKIT_EXTERN NSString *const  kBJXGetCompanyLike;

UIKIT_EXTERN NSString *const  kBJXGetJobInviteRecord;

// ------------------------------ 我的简历端口地址部分 ------------------------------

UIKIT_EXTERN NSString *const kBJXUserGetResumeList;

UIKIT_EXTERN NSString *const kBJXUserGetResumeDetailBasic;

UIKIT_EXTERN NSString *const kBJXUpdateResumeDetailBasic;

UIKIT_EXTERN NSString *const kBJXUpdateSelfAssessment;

UIKIT_EXTERN NSString *const kBJXUpdateSkillDescribe;

UIKIT_EXTERN NSString *const kBJXUpdateResumeBegPosition;

UIKIT_EXTERN NSString *const kBJXGetResumeWorkExperience;

UIKIT_EXTERN NSString *const kBJXGetResumeEducationExperience;

UIKIT_EXTERN NSString *const kBJXDeletedateResumeEducation;

UIKIT_EXTERN NSString *const kBJXGetResumeTrainExperience;

UIKIT_EXTERN NSString *const kBJXGetResumeLanguageAbility;

UIKIT_EXTERN NSString *const kBJXGetResumeCertificate;

UIKIT_EXTERN NSString *const kBJXUpdateResumeEducation;
// 工作经验
UIKIT_EXTERN NSString *const kBJXUpdateResumeWorkExperience;

UIKIT_EXTERN NSString *const kBJXDeleteResumeWorkExperience;

UIKIT_EXTERN NSString *const kBJXUpdateResumeTrain;

UIKIT_EXTERN NSString *const kBJXDeleteResumeTrain;

UIKIT_EXTERN NSString *const kBJXUpdateResumeLanguage;

UIKIT_EXTERN NSString *const kBJXDeleteResumeLanguage;

UIKIT_EXTERN NSString *const kBJXUpdateResumeCertificate;
UIKIT_EXTERN NSString *const kBJXDeleteResumeCertificate;

UIKIT_EXTERN NSString *const kBJXResumeUpdateHeadImg;


// -------------------------------- 面试投递 ----------------------------

UIKIT_EXTERN NSString *const kBJXInviteGetMyDeliverRecord;

UIKIT_EXTERN NSString *const kBJXInviteGetDeliverDetail;

UIKIT_EXTERN NSString *const kBJXUserDeliverAffirmOffer;

UIKIT_EXTERN NSString *const kBJXUserDeliverDefaultLable;

UIKIT_EXTERN NSString *const kBJXUserDeliverSubmitEvaluate;

UIKIT_EXTERN NSString *const kBJXUserDeliverEvaluateRecord;

UIKIT_EXTERN NSString *const kBJXGetUserRelevantJob;


// ------------------------------ 电力头条服务器地址 -----------------------------
UIKIT_EXTERN NSString *const kBNServerAddress;
UIKIT_EXTERN NSString *const kBNGetTypesNewsList;
UIKIT_EXTERN NSString *const kBNGetRollPicturePort;
UIKIT_EXTERN NSString *const KBJXLocationNewsApi;

