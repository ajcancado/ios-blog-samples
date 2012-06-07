//
//  Contas.m
//  somatorioDeContas
//
//  Created by vinicius quaiato on 5/20/12.
//  Copyright (c) 2012 Crafters Software Studio. All rights reserved.
//

#import "Gastos.h"

@implementation Gastos

-(id)init{
    gastos = [[NSMutableArray alloc] init];
    
    return self;
}
-(void)addGastoFromString:(NSString *)valorGasto{
    NSDecimalNumber* valor = [[NSDecimalNumber alloc] initWithFloat: [valorGasto floatValue]];
    
    [gastos addObject:valor];
}
-(int)totalDeGastos{
    return gastos.count;
}
-(NSDecimalNumber*) somaDosGastos{
    NSDecimalNumber *sum = [gastos valueForKeyPath:@"@sum.floatValue"];
    
    return sum;
}
-(NSDecimalNumber*) gastoAtIndex:(NSInteger)index{
    return [gastos objectAtIndex:index];
}
@end
