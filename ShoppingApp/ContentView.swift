//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Doğan Ensar Papuçcuoğlu on 17.01.2025.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home = "house"
    case search = "magnifyingglass.circle"
    case notifications = "bell"
    case cart = "bag"
    case profile = "person"
    
    var tabName: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        case .cart:
            return "Cart"
        case .profile:
            return "Profile"
        }
    }
}

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State private var currentTab: Tab = .home
   
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
 
    var body: some View {
        TabView(selection: $currentTab) {
            Text("Home View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.home)
            Text("Search View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.search)
            Text("Notifications View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.notifications)
            Text("Cart View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.cart)
            Text("Profile View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.profile)
        }
        .overlay (
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    TabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                .background(Color(.kSecondary))
            },
            alignment: .bottom
        )
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    func TabButton(tab: Tab) -> some View {
        GeometryReader { proxy in
            Button {
                withAnimation(.spring()) {
                    currentTab = tab
                }
            } label: {
                VStack(spacing: 0) {
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill" : tab.rawValue)
                        .resizable()
                        .foregroundStyle(.kPrimary)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack {
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text(tab.tabName)
                                        .foregroundStyle(.kPrimary)
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }
                            }
                        )
                        .contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            }

        }
        .frame(height: 25)
    }
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
