#include <bits/stdc++.h>

#define FOR(i, a, b) for(long i = (long)a;i < (long)b;i++)
#define For(i, a) FOR(i, 0, a)
#define REV(i, a, b) for(long i = (long)b-1;i >= (long)a;i--)
#define Rev(i, a) REV(i, 0, a)
#define REP(a) For(i, a)
#ifdef ENABLE_DEBUG
#define dump(x) cerr<<#x"="<<x<<endl;
#define dumparr(x,n) cerr<<#x"["<<n<<"]="<<x[n]<<endl;
#define DEBUG_PRINT(...) fprintf(stderr, __VA_ARGS__)
#else
#define dump(x)
#define dumparr(x,n)
#define DEBUG_PRINT(...) 
#endif

using namespace std;
typedef long long ll;
typedef unsigned long long ull;
typedef unsigned int uint;
typedef pair<ll, ll> pll;
typedef vector<ll> vll;
void print_pair(pll a){
  cerr<<"("<<a.first<<", "<<a.second<<") ";
}
template<class S,class T>
std::ostream& operator<<(std::ostream& os,pair<S,T> a){
  os << "(" << a.first << "," << a.second << ")";
  return os;
}
template<class T>
std::ostream& operator<<(std::ostream& os,vector<T> a){
  os << "[ ";
  REP(a.size()){
    os<< a[i] << " ";
  }
  os<< " ]";
  return os;
}

int main(){
  return 0;
}
