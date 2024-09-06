

import SwiftUI

struct KeySelectView: View {
    
    @State private var cAmViewShow = false
    @State private var dHmViewShow = false
    @State private var gEmViewShow = false
    @State private var fDmViewShow = false
    
    
    var body: some View {
        
        GeometryReader { proxy in
            let size = proxy.size
            
            
            VStack{
                Text("Key Selection").fontWeight(.bold).foregroundStyle(Color.white)
                
                Spacer()
                
                Button {
                    print("AmC")
                    cAmViewShow.toggle()
                } label: {
                    Image("C - Am")
                }
                .fullScreenCover(isPresented: $cAmViewShow){
                    KeyAmCView()
                }
                
                Button {
                    print("D - Hm")
                    dHmViewShow.toggle()
                    
                } label: {
                    Image("D - Hm")
                }
                .fullScreenCover(isPresented: $dHmViewShow) {
                    KeyHmDView()
                }
                
                Button {
                    print("EmG")
                    gEmViewShow.toggle()
                } label: {
                    Image("G - Em")
                }
                .fullScreenCover(isPresented: $gEmViewShow) {
                    KeyEmGView()
                }
                
                Button {
                    print("DmF")
                    fDmViewShow.toggle()
                    
                } label: {
                    Image("F -Dm")
                }
                .fullScreenCover(isPresented: $fDmViewShow) {
                    KeyDmFView()
                }
                
                Spacer()

            }
            .frame(width: size.width, height: size.height)
            .background(Color.black)
            
            
            
            
            
        }
     
       
    }
}

#Preview {
    KeySelectView()
}
