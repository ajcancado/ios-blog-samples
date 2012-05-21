//
//  ViewController.h
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gastos.h"

@interface ViewController : UIViewController
{
    Gastos* gastos;
}

-(IBAction)addConta:(id)sender;
@property (nonatomic,retain) IBOutlet UILabel* totalContas;
@property (nonatomic,retain) IBOutlet UILabel* numeroDeContas;
@property (nonatomic,retain) IBOutlet UITextField* valorConta;
@end
