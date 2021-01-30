using System;

namespace PaymentApplication 
{
   public class Payment : Form 
   {
		enum ProductType
		{
			PhysicalProduct,
			Book,
			Membership,
			UpgradeToMembership,
			Video
		}
		
		public Payment()
		{
			InitializeComponent();
		}
		
		private void buttonPayment_Click(object sender, EventArgs e)
		{
			
			ProductType pt = (ProductType) (new Random()).Next(0, 4);
			
			 switch (pt)
			 {
				case ProductType.PhysicalProduct:
					GeneratePackingSlip();
					break;
				case ProductType.Book:
					CreateDuplicatePackingSlip() ;
					break;
				case ProductType.Membership:
					ActivateMembership();
					break;
				case ProductType.UpgradeToMembership:
					UpgradeMembership();
					break;
				case ProductType.Video:
					AddFreeVideo();
					break;
				default:
					Messagebox.Show("Product Type not found!");
					break;
			 }
				
		}
		
		public void GeneratePackingSlip() 
	  {
			//This method generates a packing slip 
			GenerateCommissionPayment();
      }
	  
	  public void CreateDuplicatePackingSlip() 
	  {
			//This method creates a duplicate packing slip for the Royalty Department
			GenerateCommissionPayment();
      }
	  
	  public void ActivateMembership() 
	  {
			//This method activates the membership
			SendEmail("address@xyz.com"); //Preffered way is using an ID list to pull related table from DB for better performance. Also using validation groups such as input length etc. 
      }
	  
	  public void UpgradeMembership() 
	  {
			//This method upgrades the membership
			SendEmail(string emailAddress);
      }
	  
	  public void AddFreeVideo() 
	  {
			//
      }
	  
	  public void GenerateCommissionPayment() 
	  {
			//This method generates a commission payment for the agent
      }
	  
	  public void SendEmail(string emailAddress, string callingMethod) 
	  {
			//This method sends email
      }
		
		
		public void EnumProductTypeToListboxProductType(Type EnumProductType, ListControl listboxProductType)
		{
			Array Values = System.Enum.GetValues(EnumProductType);
			foreach (int Value in Values)
			{	
				string Display = Enum.GetName(EnumProductType, Value);
				ListItem Item = new ListItem(Display, Value.ToString());
				listboxProductType.Items.Add(Item);
			}
		}
   }
}


