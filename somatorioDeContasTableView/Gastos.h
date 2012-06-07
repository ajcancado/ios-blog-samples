//
//  Contas.h
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Gastos : NSObject
{
    NSMutableArray* gastos;
}

-(void)addGastoFromString: (NSString*) valorGasto;
-(int)totalDeGastos;
-(NSDecimalNumber*) somaDosGastos;
-(NSDecimalNumber*) gastoAtIndex:(NSInteger)index;
@end
