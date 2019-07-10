#include <bits/stdc++.h>

#define FOR(i, a, b) for(int i = a;i < b;i++)
#define For(i, a) FOR(i, 0, a)
#define REV(i, a, b) for(int i = b-1;i >= a;i--)
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
const char *IMP = "IMPOSSIBLE";
const char *POS = "POSSIBLE";

int times, ans;

int main(){
  scanf("%d", &times);
  For(time, times){
    
answer:
    printf("Case #%d: %d\n", time+1, ans);
    continue;
possible:
    printf("Case #%d: %s\n", time+1, POS);
    continue;
impossible:
    printf("Case #%d: %s\n", time+1, IMP);
    continue;
  }
  return 0;
}
