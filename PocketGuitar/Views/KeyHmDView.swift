
import SwiftUI

struct KeyHmDView: View {
    
    @ObservedObject var viewModel = KeyHmDViewModel()
    @State private var isShowSelectView = false
    
    var body: some View {
        VStack(spacing: 3){
            
                
                HStack(spacing: 70){
                    
                    Image("D(D-Hm)")
                        .onLongPressGesture(minimumDuration: 0) {
                            self.viewModel.play1()
                        }
                    Image("Em(D-Hm)")
                        .onLongPressGesture(minimumDuration: 0) {
                            self.viewModel.play2()
                        }
                   
                        }
                        
                        
                        HStack(spacing: 70){
                            Image("Hm(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play6()
                                }
                            Image("Fm#(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play3()
                                }
                          
                        }
                        HStack(spacing: 70){
                            Image("G(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play4()
                                }
                            Image("A(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play5()
                                }
                           
                           
                        }
                        HStack(spacing: 70){
                            Image("F#(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play7()
                                }
                            Image("E(D-Hm)")
                                .onLongPressGesture(minimumDuration: 0) {
                                    self.viewModel.play8()
                                }
                            
                            
                           
                        }
                        
                      
        }
        
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("D - HmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                Spacer()
                Text("D - Hm").foregroundStyle(Color.white).font(.largeTitle).offset(x: 30)
                Spacer()
                Button(action: {
                    isShowSelectView.toggle()
                }, label: {
                    Image("settings")
                })
                .fullScreenCover(isPresented: $isShowSelectView, content: {
                    KeySelectView()
                })
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("HM-Color")).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
    }
}

#Preview {
    KeyHmDView()
}
