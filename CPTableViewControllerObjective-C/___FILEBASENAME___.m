//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "<#model#>.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

/// 数据列表
@property (nonatomic, strong) NSArray<<#model#> *> *dataList;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"";
    
    @weakify(self);
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        @strongify(self);
        [self requestData];
    }];
    
    [self requestData];
}

- (NSArray *)buildData {
    NSMutableArray *objects = [[NSMutableArray alloc] init];
    
    [objects addObject:[self spaceCellWithBackgroundColr:nil height:12]];
    return objects;
}

#pragma mark - network && handle
/// 查询提现申请详情
- (void)requestData {
//    [self.view gh_showLoading];
//
//    CPNetworkCodec *networkCodec = [[CPNetworkCodec alloc] init];
//    networkCodec.apiName = @"/api/profit/drawMoneyDetail";
//    NSMutableDictionary *params = [NSMutableDictionary dictionary];
//    [params safeObject:self.object.uuid forKey:@"uuid"];
//    networkCodec.requestModel = params;
//    networkCodec.dataClass = [CPIncomeListObject class];
//    [networkCodec sendRequestWithSuccess:^(SCDefaultResponseModel *result) {
//        [self.tableView.mj_header endRefreshing];
//        [self.view gh_hideLoading];
//        if([result responseSuccess]){
//            self.object = (CPIncomeListObject *)result.data;
//            [self reloadData];
//        }
//    } failure:^(NSError *error) {
//        [self.tableView.mj_header endRefreshing];
//        [self.view gh_hideLoading];
//        @weakify(self)
//        [self.view showErrorWithImage:[UIImage imageNamed:@"common_no_network"]
//                                 text:@"网络开小差，检查后再试吧"
//                               action:^{
//            @strongify(self)
//            [self.view hideErrorView];
//            [self requestWithdrawDetailData];
//        }];
//        DLog(@"error: %@", error);
//    }];
}

@end
