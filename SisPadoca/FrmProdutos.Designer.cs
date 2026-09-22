namespace SisPadoca
{
    partial class FrmProdutos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmProdutos));
            PbxFoto = new PictureBox();
            TxbNcm = new TextBox();
            TxbDescricao = new TextBox();
            LblNcm = new Label();
            LblDescricao = new Label();
            TxbCodigo = new TextBox();
            TxbLote = new TextBox();
            CmbMedida = new ComboBox();
            BtnNovo = new Button();
            BtnEditar = new Button();
            BtnExcluir = new Button();
            BtnLimpar = new Button();
            BtnFechar = new Button();
            LblCodigo = new Label();
            LblMedida = new Label();
            LblLote = new Label();
            ImgLista = new ImageList(components);
            ((System.ComponentModel.ISupportInitialize)PbxFoto).BeginInit();
            SuspendLayout();
            // 
            // PbxFoto
            // 
            PbxFoto.Image = (Image)resources.GetObject("PbxFoto.Image");
            PbxFoto.Location = new Point(61, 12);
            PbxFoto.Name = "PbxFoto";
            PbxFoto.Size = new Size(197, 200);
            PbxFoto.SizeMode = PictureBoxSizeMode.StretchImage;
            PbxFoto.TabIndex = 0;
            PbxFoto.TabStop = false;
            // 
            // TxbNcm
            // 
            TxbNcm.Location = new Point(272, 33);
            TxbNcm.Name = "TxbNcm";
            TxbNcm.Size = new Size(217, 31);
            TxbNcm.TabIndex = 1;
            // 
            // TxbDescricao
            // 
            TxbDescricao.Location = new Point(275, 100);
            TxbDescricao.Name = "TxbDescricao";
            TxbDescricao.Size = new Size(304, 31);
            TxbDescricao.TabIndex = 2;
            // 
            // LblNcm
            // 
            LblNcm.AutoSize = true;
            LblNcm.Location = new Point(278, 5);
            LblNcm.Name = "LblNcm";
            LblNcm.Size = new Size(52, 25);
            LblNcm.TabIndex = 3;
            LblNcm.Text = "NCM";
            // 
            // LblDescricao
            // 
            LblDescricao.AutoSize = true;
            LblDescricao.Location = new Point(272, 72);
            LblDescricao.Name = "LblDescricao";
            LblDescricao.Size = new Size(88, 25);
            LblDescricao.TabIndex = 4;
            LblDescricao.Text = "Descrição";
            // 
            // TxbCodigo
            // 
            TxbCodigo.Location = new Point(278, 178);
            TxbCodigo.Name = "TxbCodigo";
            TxbCodigo.Size = new Size(301, 31);
            TxbCodigo.TabIndex = 6;
            // 
            // TxbLote
            // 
            TxbLote.Location = new Point(634, 178);
            TxbLote.Name = "TxbLote";
            TxbLote.Size = new Size(150, 31);
            TxbLote.TabIndex = 7;
            // 
            // CmbMedida
            // 
            CmbMedida.FormattingEnabled = true;
            CmbMedida.Items.AddRange(new object[] { "unitário", "kilo", "dúzia" });
            CmbMedida.Location = new Point(634, 98);
            CmbMedida.Name = "CmbMedida";
            CmbMedida.Size = new Size(150, 33);
            CmbMedida.TabIndex = 8;
            // 
            // BtnNovo
            // 
            BtnNovo.Location = new Point(160, 289);
            BtnNovo.Name = "BtnNovo";
            BtnNovo.Size = new Size(127, 76);
            BtnNovo.TabIndex = 9;
            BtnNovo.Text = "Novo";
            BtnNovo.UseVisualStyleBackColor = true;
            // 
            // BtnEditar
            // 
            BtnEditar.Location = new Point(329, 289);
            BtnEditar.Name = "BtnEditar";
            BtnEditar.Size = new Size(127, 76);
            BtnEditar.TabIndex = 10;
            BtnEditar.Text = "Editar";
            BtnEditar.UseVisualStyleBackColor = true;
            // 
            // BtnExcluir
            // 
            BtnExcluir.Location = new Point(492, 289);
            BtnExcluir.Name = "BtnExcluir";
            BtnExcluir.Size = new Size(127, 76);
            BtnExcluir.TabIndex = 11;
            BtnExcluir.Text = "Excluir";
            BtnExcluir.UseVisualStyleBackColor = true;
            // 
            // BtnLimpar
            // 
            BtnLimpar.Location = new Point(657, 289);
            BtnLimpar.Name = "BtnLimpar";
            BtnLimpar.Size = new Size(127, 76);
            BtnLimpar.TabIndex = 12;
            BtnLimpar.Text = "Limpar";
            BtnLimpar.UseVisualStyleBackColor = true;
            // 
            // BtnFechar
            // 
            BtnFechar.Location = new Point(832, 289);
            BtnFechar.Name = "BtnFechar";
            BtnFechar.Size = new Size(127, 76);
            BtnFechar.TabIndex = 13;
            BtnFechar.Text = "Fechar";
            BtnFechar.UseVisualStyleBackColor = true;
            // 
            // LblCodigo
            // 
            LblCodigo.AutoSize = true;
            LblCodigo.Location = new Point(275, 152);
            LblCodigo.Name = "LblCodigo";
            LblCodigo.Size = new Size(149, 25);
            LblCodigo.TabIndex = 14;
            LblCodigo.Text = "Código de Barras";
            // 
            // LblMedida
            // 
            LblMedida.AutoSize = true;
            LblMedida.Location = new Point(628, 70);
            LblMedida.Name = "LblMedida";
            LblMedida.Size = new Size(143, 25);
            LblMedida.TabIndex = 15;
            LblMedida.Text = "Unidade medida";
            LblMedida.Click += LblMedida_Click;
            // 
            // LblLote
            // 
            LblLote.AutoSize = true;
            LblLote.Location = new Point(628, 149);
            LblLote.Name = "LblLote";
            LblLote.Size = new Size(46, 25);
            LblLote.TabIndex = 16;
            LblLote.Text = "Lote";
            // 
            // ImgLista
            // 
            ImgLista.ColorDepth = ColorDepth.Depth32Bit;
            ImgLista.ImageSize = new Size(16, 16);
            ImgLista.TransparentColor = Color.Transparent;
            // 
            // FrmProdutos
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(826, 485);
            Controls.Add(LblLote);
            Controls.Add(LblMedida);
            Controls.Add(LblCodigo);
            Controls.Add(BtnFechar);
            Controls.Add(BtnLimpar);
            Controls.Add(BtnExcluir);
            Controls.Add(BtnEditar);
            Controls.Add(BtnNovo);
            Controls.Add(CmbMedida);
            Controls.Add(TxbLote);
            Controls.Add(TxbCodigo);
            Controls.Add(LblDescricao);
            Controls.Add(LblNcm);
            Controls.Add(TxbDescricao);
            Controls.Add(TxbNcm);
            Controls.Add(PbxFoto);
            Name = "FrmProdutos";
            Text = "FrmProdutos";
            Load += FrmProdutos_Load;
            ((System.ComponentModel.ISupportInitialize)PbxFoto).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private PictureBox PbxFoto;
        private TextBox TxbNcm;
        private TextBox TxbDescricao;
        private Label LblNcm;
        private Label LblDescricao;
        private TextBox TxbCodigo;
        private TextBox TxbLote;
        private ComboBox CmbMedida;
        private Button BtnNovo;
        private Button BtnEditar;
        private Button BtnExcluir;
        private Button BtnLimpar;
        private Button BtnFechar;
        private Label LblCodigo;
        private Label LblMedida;
        private Label LblLote;
        private ImageList ImgLista;
    }
}