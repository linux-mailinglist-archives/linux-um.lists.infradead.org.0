Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC41548FE
	for <lists+linux-um@lfdr.de>; Thu,  6 Feb 2020 17:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyjJUF039DzI6w7o267Z+lWH6TmnSFuT0RORsBCRk7s=; b=Cjae/wxqlXFe39
	O0JkZOkLkJ9ock67xk5IAkEVA36rmGMX4zRpRY6nh/H+oxPCdOUaOJOgC3NpQTHwGTHLGGrLgptOV
	K/YdzrYPPCvLc1h9y/A+0Imz/2/cyBtCfhmn2fIalm7+x80X8XSZBoEH1YBa8HZeZIpu3x0/Yu3hx
	1J+6mhL07lPZSkOcixRpK8TL1C6ujH9qyvDnVurUZpw3O7EqExU13xVfrmsDsY96IrKGWFfTy6dUz
	qImWtZ0ZxVx/FQWg/t9ZyL9rNC5mVLsj4FT7AkD4HzMzJaToCAtvfH6Gt5EAhsNcDZ0wHOKS/e4rz
	Bt64rJY9efJKXLC3N8EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjuh-000598-DW; Thu, 06 Feb 2020 16:21:59 +0000
Received: from [179.95.15.160] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjud-00057R-2N; Thu, 06 Feb 2020 16:21:56 +0000
Date: Thu, 6 Feb 2020 17:21:36 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Cornelia Huck <cohuck@redhat.com>
Subject: Re: [PATCH v2 00/27] docs: virt: manually convert text documents to
 ReST format
Message-ID: <20200206172136.2fd36abd@kernel.org>
In-Reply-To: <20200206171738.75f374da.cohuck@redhat.com>
References: <cover.1581000481.git.mchehab+huawei@kernel.org>
 <20200206171738.75f374da.cohuck@redhat.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-um@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Em Thu, 6 Feb 2020 17:17:38 +0100
Cornelia Huck <cohuck@redhat.com> escreveu:

> On Thu,  6 Feb 2020 15:49:57 +0100
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> 
> > Manually convert the documentation under Documentation/virt to ReST,
> > minimizing the usage of uneeded markups and preserving the documentation
> > writer's style.  
> 
> While you're at it: Would it make sense to convert and move the lone
> file under Documentation/virtual/ that survived 2f5947dfcaec
> ("Documentation: move Documentation/virtual to Documentation/virt")
> (probably due to a conflict) under virt/ as well?

Sure. Will do at the next version of this series.

Regards,
Mauro

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
