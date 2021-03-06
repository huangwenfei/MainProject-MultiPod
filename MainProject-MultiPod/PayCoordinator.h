//
//  PayCoordinator.h
//  MainProject-MultiPod
//
//  Created by gxy on 2020/4/7.
//  Copyright © 2020 Bruce. All rights reserved.
//

#import <LBCoordinator/LBNavigationCoordinator.h>

NS_ASSUME_NONNULL_BEGIN

@class PayCoordinator;
@protocol PayCoordinatorDelegate <NSObject>

- (void)payFlow:(PayCoordinator *)payFlow didFinishWithStatus:(BOOL)payStatus;

@end

@interface PayCoordinator : LBNavigationCoordinator
@property (nonatomic, weak) id<PayCoordinatorDelegate> delegate;
- (void)startWithPId:(NSInteger)pId;
@end

NS_ASSUME_NONNULL_END
