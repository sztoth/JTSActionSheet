//
//  JTSActionSheetItem.m
//  Time Zones
//
//  Created by Jared Sinclair on 7/24/14.
//  Copyright (c) 2014 Nice Boy LLC. All rights reserved.
//

#import "JTSActionSheetItem.h"

@interface JTSActionSheetItem ()

@property (copy, nonatomic, readwrite) NSString *title;
@property (copy, nonatomic, readwrite) JTSActionBlock actionBlock;
@property (assign, nonatomic, readwrite) BOOL destructive;

@end

@implementation JTSActionSheetItem

+ (instancetype)itemWithTitle:(NSString *)title
                       action:(JTSActionBlock)actionBlock
                isDestructive:(BOOL)isDestructive
  		    isEnabled:(BOOL)isEnabled {
    
    JTSActionSheetItem *item = [[JTSActionSheetItem alloc] init];
    item.title = title;
    item.actionBlock = actionBlock;
    item.destructive = isDestructive;
    item.enabled = isEnabled;

    return item;
}

@end
