#include<iostream>
#include<fstream> 
#include<string>
#include<cstring>
#include<memory.h>
using namespace std;
string numtob(int num)
{
	int i,c=0,a[5];  
	memset(a,0,sizeof(a));
	while(num!=0)  
    {  
        i = num % 2;  
        a[c] = i;  
        c++ ;  
        num = num / 2;  
    }  
	string res;
	for(int i = 0 ; i < 5 ; i++)
	    res.push_back(a[4-i] + '0');
	return res;  
}
string numtob10(int num)
{
	int i,c=0,a[10];  
	memset(a,0,sizeof(a));
	while(num!=0)  
    {  
        i = num % 2;  
        a[c] = i;  
        c++ ;  
        num = num / 2;  
    }  
	string res;
	for(int i = 0 ; i < 10 ; i++)
	    res.push_back(a[9-i] + '0');
	return res;  
}
string ritob(string numa,string numb,string numc)
{
	string ans;
	int m_numa,m_numb,m_numc;
	string b_numa,b_numb,b_numc;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 

	b_numa = numtob(m_numa);
	if(numb[1] == ' ') m_numb = numb[0] - '0';
	else m_numb = (numb[0]-'0')*10 + numb[1]-'0'; 

	b_numb = numtob(m_numb);
	m_numc = numc[1]-'0';

	b_numc = numtob(m_numc);
	
	if(numc[0] == '-')
	{
		for(int i = 0 ; i < 5 ; i++)
		    if(b_numc[i] == '0') b_numc[i] = '1';
			else b_numc[i] = '0';
		for(int i = 4 ; i >= 0 ; i--)
		{
			if(b_numc[i] == '1') b_numc[i] = '0';
			else{
				b_numc[i] = '1';
				break;
			}
		}	
	}
	if(b_numc[0] == '1')
        ans += b_numb + b_numa + "11111111111" + b_numc;
    else
    	ans += b_numb + b_numa + "00000000000" + b_numc;
    return ans;
}
string rtob(string numa,string numb,string numc) 
{
	string ans;
	int m_numa,m_numb,m_numc;
	string b_numa,b_numb,b_numc;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	if(numb[1] == ' ') m_numb = numb[0] - '0';
	else m_numb = (numb[0]-'0')*10 + numb[1]-'0'; 
	b_numb = numtob(m_numb);
	
    if(numc[0] == ' ') m_numc = numc[1] - '0';
	else m_numc = (numc[0]-'0')*10 + numc[1]-'0';
	b_numc = numtob(m_numc);
	
	ans = b_numb + b_numc + b_numa + "00000000000";
	return ans; 
}
string slltob(string numa,string numb,string numc)
{
	string ans;
	int m_numa,m_numb,m_numc;
	string b_numa,b_numb,b_numc;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	if(numb[1] == ' ') m_numb = numb[0] - '0';
	else m_numb = (numb[0]-'0')*10 + numb[1]-'0'; 
	b_numb = numtob(m_numb);
	
	m_numc = numc[1]-'0';
	b_numc = numtob(m_numc);
	ans ="00000" + b_numb + b_numa + b_numc + "000000";
	return ans;
}
string wtob(string numa)
{
	string ans;
	int m_numa;
	string b_numa;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	ans += "00001" + b_numa + "0000000000000100";
	return ans; 
}
string beqtob(string numa,string numb,string numc)
{
	string ans;
	int m_numa,m_numb,m_numc;
	string b_numa,b_numb,b_numc;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	if(numb[1] == ' ') m_numb = numb[0] - '0';
	else m_numb = (numb[0]-'0')*10 + numb[1]-'0'; 
	b_numb = numtob(m_numb);
	
	m_numc = numc[1]-'0';
	b_numc = numtob(m_numc);
	if(numc[0] == '-')
	{
		for(int i = 0 ; i < 5 ; i++)
		    if(b_numc[i] == '0') b_numc[i] = '1';
			else b_numc[i] = '0';
		for(int i = 4 ; i >= 0 ; i--)
		{
			if(b_numc[i] == '1') b_numc[i] = '0';
			else{
				b_numc[i] = '1';
				break;
			}
		}	
	}
	if(b_numc[0] == '1')
        ans += b_numa + b_numb + "11111111111" + b_numc;
    else
    	ans += b_numa + b_numb + "00000000000" + b_numc;
    return ans;
}
string bgtz(string numa)
{
	string ans;
	int m_numa;
	string b_numa;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	ans += b_numa + "00000" + "1111111111111110";
	return ans;
}
string jtob(string num)
{
	int n = 0,pos = 1;
	for(int i = 6 ; i >=0 ; i--)
	{
		if(num[i] == 0) break;
		else
		{
			n += (num[i]-'0')*pos;
			pos = pos*16;
		}
	}
	n = n/4;
	string binary = numtob10(n);
	string ans;
	ans += "0000000000000000" + binary;
	return ans;
}
string jrtob(string numa)
{
	string ans;
	int m_numa;
	string b_numa;
	if(numa[1] == ' ') m_numa = numa[0] - '0';
	else m_numa = (numa[0]-'0')*10 + numa[1]-'0'; 
	b_numa = numtob(m_numa);
	
	ans += b_numa + "000000000000000000000";
	return ans;
}
string decoder(string code)
{
	string opcode,numa,numb,numc,num,bcode;
	opcode = code.substr(0,4);
	numa = code.substr(6,2);
	numb = code.substr(10,2);
	numc = code.substr(14,2);
	num = code.substr(7,7);
	string tmp;   
    	if(opcode == "add ")
    	{
			bcode += "000000";
    		tmp = rtob(numa,numb,numc);
    		bcode += tmp;
        }
		else if(opcode == "sub ")
    	{
			bcode += "000001";
    		tmp = rtob(numa,numb,numc);
    		bcode += tmp;
        }
    	else if(opcode == "addi")
    	{
    		bcode = "000010";
    		tmp = ritob(numa,numb,numc);
			bcode += tmp;
        }
    	else if(opcode == "or  ")
    	{
    		bcode += "010000";
    		tmp = rtob(numa,numb,numc);
    		bcode += tmp;
        }
    	else if(opcode == "and ")
    	{
    		bcode += "010001";
    		tmp = rtob(numa,numb,numc);
    		bcode += tmp;
        }
    	else if(opcode == "ori ")
    	{
    		bcode += "010010";
    		tmp = ritob(numa,numb,numc);
    		bcode += tmp;
        }
		else if(opcode == "sll ")
		{
			bcode += "011000";
			tmp = slltob(numa,numb,numc);
			string a,b,c; 
			bcode += tmp;
        }
		else if(opcode ==  "slt ")
		{
			bcode += "100110";
			tmp = rtob(numa,numb,numc);
    		bcode += tmp;
        }
		else if(opcode ==  "slti")
		{
			bcode += "100111";
			tmp = ritob(numa,numb,numc);
    		bcode += tmp;
        }
		else if(opcode ==  "sw  ")
		{
			bcode += "110000";
			tmp = wtob(numa);
			bcode += tmp;
        }
		else if(opcode ==  "lw  ")
		{
			bcode += "110001";
			tmp = wtob(numa);
			bcode += tmp;  
        }
		else if(opcode == "beq ")
		{
			bcode += "110100";
			tmp = beqtob(numa,numb,numc);
			bcode += tmp;
        }
		else if(opcode== "bne ")
		{
			bcode += "110101";
			tmp = beqtob(numa,numb,numc);
			bcode += tmp;
        }
		else if(opcode ==  "bgtz")
		{	
		    bcode += "110110";
		    tmp = bgtz(numa);
		    bcode +=tmp;
        }
	    else if(opcode == "j   ")
	    {
	    	bcode += "111000";
	    	tmp = jtob(num);
	    	bcode += tmp;
        }
	    else if(opcode== "jr  ")
	    {
	    	bcode += "111001";
	    	tmp = jrtob(numa);
	    	bcode += tmp;
        }
	    else if(opcode== "jal ")
	    {
	    	bcode += "111010";
	    	tmp = jtob(num);
	    	bcode += tmp;
        }
		else if(opcode == "halt")
		{
		    bcode += "11111100000000000000000000000000";
        }

	   return bcode;
}
int main()
{
	ifstream infile;
	ofstream outfile;
	infile.open("code.txt",ios::in);
	outfile.open("binarycode.txt",ios::out|ios::trunc);
	outfile.clear();
	string scode,bcode;
	while(getline(infile,scode))
	{
		bcode = decoder(scode);
		outfile<<bcode.substr(0,8)<<" "<<bcode.substr(8,8)<<" "<<bcode.substr(16,8)<<" "<<bcode.substr(24,8)<<endl;
		cout<<bcode.substr(0,8)<<" "<<bcode.substr(8,8)<<" "<<bcode.substr(16,8)<<" "<<bcode.substr(24,8)<<endl;
	}
	infile.close();
	outfile.close();
	return 0;
}
