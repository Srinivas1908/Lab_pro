#import <Foundation/Foundation.h>
#import "phonebook.h"
#import "phonecard.h"

int main()
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
	phonecard *p1=[[phonecard alloc]init];
	phonecard *p2=[[phonecard alloc]init];
	phonecard *p3=[[phonecard alloc]init];

	[p1 setName:@"sdf"];
	[p1 setEmail:@"dsa@gmail.com"];
	[p1 setNo:1];
	
	[p2 setName:@"asdf"];
	[p2 setEmail:@"sdfg@gmail.com"];
	[p2 setNo:2];

	[p3 setName:@"asdfas"];
	[p3 setEmail:@"kjkdf@gmail.com"];
	[p3 setNo:3];
	
	phonebook *p_book=[[phonebook alloc]initWithName:@"Srinivas's book"];
	
	[p_book addobj:p1];
	[p_book addobj:p2];
	[p_book addobj:p3];
	[p_book findByName:@"sdf"];
	[p_book print];
	[p_book deleteContact:@"sdf"];
	[p_book print];
	[myPool drain];
	return 0;
}