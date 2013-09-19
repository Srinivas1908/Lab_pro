#import<Foundation/Foundation.h>
#import "Goods.h"
#import "Calculate.h"

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Calculate *calc = [[Calculate alloc]init];
	Goods *chair = [[Goods alloc]init];
	Goods *carrot = [[Goods alloc]init];
	
	[chair setType:@"finished goods"];
	[chair setAmount:500.0];
	
	[carrot setType:@"groceries"];
	[carrot setAmount:100.0];
	
	NSLog(@"\nAmount without tax for chair: %.3lf\nAmount with tax for chair: %.3lf", [chair amount], [calc calcTax:chair]);
	NSLog(@"\nAmount without tax for carrot: %.3lf\nAmount with tax for carrot: %.3lf", [carrot amount], [calc calcTax:carrot]);
	
	[pool release];
	
	return 0;
}