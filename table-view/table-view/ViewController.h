//
//  ViewController.h
//  table-view
//
//  Created by vinicius quaiato on 5/31/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
                            <UITableViewDelegate, UITableViewDataSource>
{
    NSArray* itens;
    NSNumberFormatter* formatter;
    NSLocale* locale;
}
@property (atomic, retain) NSArray* itens;
@end
